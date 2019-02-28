import {Injectable} from "@angular/core";
import {HttpEvent, HttpHandler, HttpInterceptor,HttpRequest} from '@angular/common/http';
import {Observable, throwError} from "rxjs";
import {catchError} from 'rxjs/operators';
import { Router } from '@angular/router';

@Injectable()
export class AuthInterceptor implements HttpInterceptor {
    constructor(private router: Router) {}

    intercept(req: HttpRequest<any>, next: HttpHandler): 
        Observable<HttpEvent<any>> {

          return next.handle(req).pipe(
             catchError( (error) => {
               if (error.status == "403" || error.status =="401"){
                  this.router.navigate(["/login"]);
               }
               console.log(error);
               return throwError(error);
          })
        )
    }
}
