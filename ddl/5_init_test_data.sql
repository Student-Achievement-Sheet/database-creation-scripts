EXEC ADD_USER('John Smith', 'http://example.com/proof_1', '1985-09-15', 'http://example.com/photo_1', 'Group_1');
EXEC ADD_USER('Alice Johnson', 'http://example.com/proof_2', '1990-05-25', 'http://example.com/photo_2', 'Group_2');
EXEC ADD_USER('Michael Brown', 'http://example.com/proof_3', '1982-11-10', 'http://example.com/photo_3', 'Group_3');
EXEC ADD_USER('Emily Davis', 'http://example.com/proof_4', '1995-03-30', 'http://example.com/photo_4', 'Group_4');
EXEC ADD_USER('Daniel Wilson', 'http://example.com/proof_5', '1988-07-20', 'http://example.com/photo_5', 'Group_5');

EXEC
    add_achievement(
        p_user_id => 4,
        p_category_id => 1,
        p_description => 'Description of the achievement',
        p_proof_url => 'http://example.com/proof',
        p_headline => 'Headline of the achievement',
        p_visible_date => '2024-04-12'
    );
