@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <section class="map-section">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12501.365867519173!2d27.140189!3d38.433581!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14bbd85cf0c1ce4b%3A0x8f387a42e6bef9b9!2zQcSfxLF6IHZlIERpxZ8gU2HEn2zEscSfxLEgUG9saWtsaW5pxJ9p!5e0!3m2!1str!2str!4v1699378719722!5m2!1str!2str"
                            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
            </div>
            <div class="col-md-6">
                <section class="form-section"></section>
                <form>
                    <div class="form-row ">
                        <div class="form-group col-md-6">
                            <label for="inputName">Name</label>
                            <input type="text" class="form-control" id="inputName" placeholder="Name">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputEmail">Email</label>
                            <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPhone">Phone</label>
                            <input type="text" class="form-control" id="inputPhone" placeholder="Phone">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-group">
                            <label for="inputMessage">Message</label>
                            <textarea class="form-control" id="inputMessage" rows="5" placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="form-group mt-3">
                        <button type="submit">Send</button>
                    </div>
                </form>

            </div>
        </div>

    </div>
@endsection
