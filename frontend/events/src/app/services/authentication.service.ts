import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject, Observable } from 'rxjs';
import { map } from 'rxjs/operators';

import { IUser } from '../interfaces/iuser';

@Injectable({
  providedIn: 'root'
})
export class AuthenticationService {
  private currentUserSubject: BehaviorSubject<IUser>;
    public currentUser: Observable<IUser>;
    public loginUrl = "http://localhost:8000/api/token/";
    public registerUrl = "http://localhost:8000/api/register/";

    constructor(private http: HttpClient) {
        this.currentUserSubject = new BehaviorSubject<IUser>(JSON.parse(localStorage.getItem('currentUser')));
        this.currentUser = this.currentUserSubject.asObservable();
    }

    public get currentUserValue(): IUser {
        return this.currentUserSubject.value;
    }

    public getAuthorizationToken() {
        return localStorage.getItem("access") || "";
    }

    login(username: string, password: string) {
        return this.http.post<any>(`${this.loginUrl}`, { username, password })
            .pipe(map(result => {
                if (result && result.access) {
                    localStorage.setItem('access',  result.access);
                }
            }));
    }

    register(username: string, password: string) {
        return this.http.post<any>(`${this.registerUrl}`, { username, password })
    }


    logout() {
        localStorage.removeItem('access');
    }
}