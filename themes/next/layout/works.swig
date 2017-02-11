{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}


{% block title %} {{ page.title }} | {{ config.title }} {% endblock %}

{% block page_class %}page-post-detail{% endblock %}


{% block content %}

  <div id="posts" class="posts-expand">
    {{ post_template.render(page) }}

    <div class="post-spread">
      {% if theme.jiathis %}
        {% include '_partials/share/jiathis.swig' %}
      {% elseif theme.baidushare %}
        {% include '_partials/share/baidushare.swig' %}
      {% elseif theme.add_this_id %}
        {% include '_partials/share/add-this.swig' %}
      {% elseif theme.duoshuo_shortname and theme.duoshuo_share %}
        {% include '_partials/share/duoshuo_share.swig' %}
      {% endif %}
    </div>
  </div>



    <style>
        /*整个作品展示区*/
        section .works-area {
            margin-top: -30px;  
        }

        .works-area .works-item {
            border-radius: 2px;
            border: 1px solid #eee8d5;
            margin-bottom: 50px;
            box-shadow: 8px 5px 10px rgba(0, 0, 0, .2);
        }

        .works-item-img {
            margin: auto -26px;
        }

        .works-item-img img {
            width: 100%;
        }

        .works-area .works-item {
            background: white;
            padding: 5px 25px;
        }

        .works-area .footer {
            padding: 10px 0 0 0;
            border-top: thin #eee solid;
            background: none;
            position: static;
            margin: 0;
            font-weight: bold;
        }

        .works-area .footer .btn {
            padding: 7px 9px;
            border-radius: 2px;
            float: right;
            margin: 8px 0;
            text-transform: none;
            font-size: 12px;
            font-style: italic;
            background: #0085a1;
            border: none;
            color: #fff;
        }

        .works-item .works-content {
            padding-top: 15px;
        }

        .works-item .title {
            padding-top: 6px;
        }

        .works-item .title h3 {
            display: inline-block;
            margin: 0;
            height: 33px;
            font-size: 18px;
            font-weight: 400;
        }

        .works-item .title .title-date {
            float: right;
            font-size: 18px;
        }

        .works-item .tag span {
            display: inline-block;
            font-size: 12px;
            border-radius: 3px;
            padding: 0 4px;
            border: thin solid #795548;
            color: rgb(138, 109, 59);
        }

        .works-item .subtitle {
            margin: 0;
            font-size: 17px;
        }

        @media screen and (max-width: 400px) {
            .works-item .footer .tag {
                font-size: 14px;
            }

            .works-item .works-item-img {
                height: 200px;
            }

            .bg-header .avatar img {
                max-width: 150px;
            }

            .bg-header h1 {
                font-size: 24px;
            }

            section .works-area {
                margin-top: -210px;
            }
        }
    </style>

    <div class="works-container" style="background-color: #fafafa">
        <div class="container">
            <section class="row">
                <div class="col-sm-10 col-sm-offset-1
                            col-md-8 col-md-offset-2
                          works-area">
                    {% for obj in site.data.project %}
                    <div class="works-item">
                        <div class="title">
                            <h3>
                                {{ obj.title }}
                            </h3>
                            <span class="title-date text-muted">
                                {{ obj.date }}
                            </span>
                        </div>
                        <div class="works-item-img">
                            <img src="{{ obj.img_link }}">
                        </div>
                        <div class="works-content">
                            <div class="tag text-warning">
                                {% for arrayVal in obj.tag %}
                                    <span>{{ arrayVal }}</span>
                                {% endfor %}
                            </div>
                            　
                            <p class="subtitle"> {{ obj.subTitle }} </p>

                            <p class="text-muted"> {{ obj.abstract }} </p>
                        </div>
                        <div class="footer clearfix">
                            <a class=" btn btn-default" href="{{ obj.link }}" target="_blank"> Open
                                it</a>
                        </div>
                    </div>
                    {% endfor %}
                </div>
            </section>
        </div>
    </div>






{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(true) }}
{% endblock %}


{% block script_extra %}
  {% include '_scripts/pages/post-details.swig' %}
{% endblock %}
