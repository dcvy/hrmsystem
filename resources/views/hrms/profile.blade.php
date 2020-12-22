@extends('hrms.layouts.base')

@section('content')

    <section id="content" class="animated fadeIn">

        <div class="row">

            <div class="col-md-4">
                <div class="box box-success">
                    <div class="panel">
                        <div class="panel-heading text-center">
                            <span class="panel-title">{{$details->name}}</span>
                        </div>
                        <div class="panel-body pn pb5 text-center">
                            <hr class="short br-lighter">


                        </div>
                        
                        <p class="small text-center no-margin"><span class="text-muted">Department:</span> {{$details->department}}</p>
                        <p class="small text-center no-margin"><span class="text-muted">Employee ID:</span> {{$details->code}}</p>


                    </div>
                </div>

                <div class="box box-success">
                    <div class="panel">
                        <div class="panel-heading">
                            <span class="panel-title">Bank Details</span>
                        </div>
                        <div class="panel-body pn pb5">
                            <hr class="short br-lighter">

                            <div class="box-body no-padding">
                                <table class="table">
                                    <tbody>
                                    <tr>
                                        <td style="width: 10px" class="text-center"><i class="fa fa-credit-card"></i></td>
                                        <td><strong>Account Number</strong></td>
                                        <td>{{$details->account_number}}</td>

                                    </tr>
                                    <tr>
                                        <td style="width: 10px" class="text-center"><i class="fa fa-tags"></i></td>
                                        <td><strong>Pf Account Number</strong></td>
                                        <td>{{$details->pf_account_number}}</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10px" class="text-center"><i class="fa fa-bank"></i></td>
                                        <td><strong>Bank Name</strong></td>
                                        <td>{{$details->bank_name}}</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10px" class="text-center"><i class="fa fa-code"></i></td>
                                        <td><strong>Ifsc Code</strong></td>
                                        <td>{{$details->ifsc_code}}</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10px" class="text-center"><i class="fa fa-tags"></i></td>
                                        <td><strong>Un Number</strong></td>
                                        <td>{{$details->un_number}}</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>


                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-5">
                <div class="box box-success">
                    <div class="panel">

                        <div class="panel-heading">
                            <span class="panel-title">Personal Details</span>
                        </div>
                        <div class="panel-body pn pb5">
                            <hr class="short br-lighter">


                            <div class="box-body no-padding">

                                <table class="table">
                                    <tbody>
                                    <tr>
                                        <td style="width: 10px" class="text-center"><i class="fa fa-birthday-cake"></i>
                                        </td>
                                        <td><strong>Birthday</strong></td>
                                        <td>{{$details->date_of_birth}}</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10px" class="text-center"><i class="fa fa-genderless"></i>
                                        </td>
                                        <td><strong>Gender</strong></td>
                                        <td>{{getGender($details->gender)}}</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10px" class="text-center"><i class="fa fa-envelope-o"></i>
                                        </td>
                                        <td><strong>Father's Name</strong></td>
                                        <td>{{$details->father_name}}</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10px" class="text-center"><i class="fa fa-mobile-phone"></i>
                                        </td>
                                        <td><strong>Cellphone</strong></td>
                                        <td>{{$details->number}}</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10px" class="text-center"><i class="fa fa-map-marker"></i>
                                        </td>
                                        <td><strong>Qualification</strong></td>
                                        <td>{{$details->qualification}}</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10px" class="text-center"><i class="fa fa-map-marker"></i>
                                        </td>
                                        <td><strong>Current Address</strong></td>
                                        <td>{{$details->current_address}}</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10px" class="text-center"><i class="fa fa-map-marker"></i>
                                        </td>
                                        <td><strong>Permanent Address</strong></td>
                                        <td>{{$details->permanent_address}}</td>
                                    </tr>
                                    </tbody>
                                </table>


                            </div>
                        </div>

                    </div>

                </div>
            </div>




            <div class="col-md-5">
                <div class="box box-success">
                    <div class="panel">
                        <div class="panel-heading">
                            <span class="panel-title">Employment Details</span>
                        </div>
                        <div class="panel-body pn pb5">
                            <hr class="short br-lighter">

                            <div class="box-body no-padding">
                                <table class="table">
                                    <tbody>
                                    <tr>
                                        <td style="width: 10px" class="text-center"><i class="fa fa-key"></i></td>
                                        <td><strong>Employee ID</strong></td>
                                        <td>{{$details->code}}</td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><i class="fa fa-briefcase"></i></td>
                                        <td><strong>Department</strong></td>
                                        <td>{{$details->department}}</td>
                                    </tr>
                                   
                                    <tr>
                                        <td class="text-center"><i class="fa fa-calendar"></i></td>
                                        <td><strong>Date Joined</strong></td>
                                        <td>{{$details->date_of_joining}}</td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><i class="fa fa-calendar"></i></td>
                                        <td><strong>Date Confirmed</strong></td>
                                        <td>{{$details->date_of_confirmation}}</td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><i class="fa fa-credit-card"></i></td>
                                        <td><strong>Salary</strong></td>
                                        <td>{{$details->salary}}</td>
                                        
                                    </tr>
                                   
                                    
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
                    </div>
            </div>

        </div>

    </section>

@endsection

