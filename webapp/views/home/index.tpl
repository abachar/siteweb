{extends $layout}

{block name=content}
    <div class="home">

        <div class="header">
            <div class="container">
                <div class="grid-column me"></div>
                <h1>{$personalCard->job}</h1>
                <h2>{$personalCard->jobExt}</h2>
            </div>
        </div>

        <section class="container grid">

            <div class="column-large">
                <h1>Portfolio</h1>

                <div class="grid">
                    {foreach $projects as $project}
                        <div class="column">
                            <figure>
                                <img src="/projects/assets/{$project->code}/thumbnail.jpg" />
                            </figure>
                            <h4>{$project->name}</h4>
                            <div>{$project->description|truncate:200|markdown}</div>
                        </div>
                    {/foreach}
                </div>
            </div>

            <div class="column about">
                <h1>À propos</h1>
                <div>{$personalCard->about|markdown}</div>
                <a class="profile" href="/profile">Profil détaillé</a>
            </div>
        </section>

        <hr class="container" />

        <section class="container">
            <h1>Derniers articles</h1>
            <div class="grid">
                {foreach $articles as $article}
                    <article class="column">
                        <h4><a href="/blog/{$article->code}">{$article->title}</a></h4>
                        <figure>
                            <a href="/blog/{$article->code}"> 
                                <img src="/blog/{$article->code}/assets/thumbnail.jpg" />
                            </a>
                        </figure>
                        <p>{$article->description|truncate:300|markdown}</p>
                    </article>
                    </article>
                {/foreach}
            </div>
        </section>

    </div>
{/block}