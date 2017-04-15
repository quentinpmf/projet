import { QuentinPage } from './app.po';

describe('quentin App', () => {
  let page: QuentinPage;

  beforeEach(() => {
    page = new QuentinPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
