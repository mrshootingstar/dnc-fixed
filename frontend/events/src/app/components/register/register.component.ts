import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

import { first } from 'rxjs/operators';

import { AuthenticationService } from 'src/app/services/authentication.service';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {
  registerForm: FormGroup;
  loading = false;
  submitted = false;
  returnUrl: string;
  error = '';
  show_success_alert = false;

  constructor(
    private formBuilder: FormBuilder,
    private route: ActivatedRoute,
    
    private authenticationService: AuthenticationService
  ) { }

  ngOnInit() {
    this.registerForm = this.formBuilder.group({
      username: ['', Validators.required],
      password: ['', Validators.required]
  });

  this.returnUrl = this.route.snapshot.queryParams['returnUrl'] || '/';
  }
  get f() { return this.registerForm.controls; }

  onSubmit() {
    this.authenticationService.register(this.f.username.value, this.f.password.value)
    .subscribe(
      (data) => {
        console.log("Success");
        this.show_success_alert = true;
      }, 
      error => console.log(error)
    );
  }
}
