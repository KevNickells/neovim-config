import { ComponentFixture, TestBed } from '@angular/core/testing';

import { } from ''; // component under test

describe('', () => { // component test suite name
  let component: ; // component
  let fixture: ComponentFixture<>; // <component>

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [] // [component]
    });
    fixture = TestBed.createComponent(); // (component)
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

