<div class="col-12">
    @if(session()->has('succsess'))
    <div class="alert alert-success">{{session()->get('succsess')}}</div>
    @elseif (session()->has('error'))
    <div class="alert alert-anger">{{session()->get('error')}}</div>
    @endif
</div>