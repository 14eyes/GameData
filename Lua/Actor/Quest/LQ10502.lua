require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10502 = class("Quest10502", QuestActorProxy)
Quest10502.defaultAlias = "Quest10502"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest10502:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest10502:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1050201"] = self.OnSubStart1050201,
        ["1050202"] = self.OnSubStart1050202,
        ["1050203"] = self.OnSubStart1050203,
        ["1050204"] = self.OnSubStart1050204,
        ["1050205"] = self.OnSubStart1050205,
        ["1050206"] = self.OnSubStart1050206,
        ["1050207"] = self.OnSubStart1050207,
        ["1050212"] = self.OnSubStart1050212,
        ["1050213"] = self.OnSubStart1050213,
        ["1050208"] = self.OnSubStart1050208,
        ["1050209"] = self.OnSubStart1050209,
        ["1050210"] = self.OnSubStart1050210,
        ["1050211"] = self.OnSubStart1050211
    }
end

function Quest10502:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1050201"] = self.OnSubFinish1050201,
        ["1050202"] = self.OnSubFinish1050202,
        ["1050203"] = self.OnSubFinish1050203,
        ["1050204"] = self.OnSubFinish1050204,
        ["1050205"] = self.OnSubFinish1050205,
        ["1050206"] = self.OnSubFinish1050206,
        ["1050207"] = self.OnSubFinish1050207,
        ["1050212"] = self.OnSubFinish1050212,
        ["1050213"] = self.OnSubFinish1050213,
        ["1050208"] = self.OnSubFinish1050208,
        ["1050209"] = self.OnSubFinish1050209,
        ["1050210"] = self.OnSubFinish1050210,
        ["1050211"] = self.OnSubFinish1050211
    }
end

function Quest10502:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1050201"] = self.OnSubFailed1050201,
        ["1050202"] = self.OnSubFailed1050202,
        ["1050203"] = self.OnSubFailed1050203,
        ["1050204"] = self.OnSubFailed1050204,
        ["1050205"] = self.OnSubFailed1050205,
        ["1050206"] = self.OnSubFailed1050206,
        ["1050207"] = self.OnSubFailed1050207,
        ["1050212"] = self.OnSubFailed1050212,
        ["1050213"] = self.OnSubFailed1050213,
        ["1050208"] = self.OnSubFailed1050208,
        ["1050209"] = self.OnSubFailed1050209,
        ["1050210"] = self.OnSubFailed1050210,
        ["1050211"] = self.OnSubFailed1050211
    }
end

function Quest10502:Start()
    print("Start")
end

function Quest10502:OnDestroy()
    print("OnDestroy")
end

function Quest10502:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10502:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10502:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10502:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:FinishQuestID(false, 1050212)
        globalActor:UnSpawn("Q10502Diary")
        print("Invoke 1")
    elseif arg1 == 2 then
        print("Invoke 2")
        globalActor:UnSpawn("Q10502Box")
        self:SpawnGadgetById(1050207, 70710114, 1)
    elseif arg1 == 3 then
        print("Invoke 3")
        globalActor:UnSpawn("Q1050203Box")
        self:SpawnGadgetById(1050206, 70710114, 1)
    elseif arg1 == 4 then
        print("Invoke 4")
        self:FinishQuestID(false, 1050210)
    elseif arg1 == 5 then
        print("Invoke 5")
        globalActor:UnSpawn("Q10502GeneralBook")
        self:SpawnGadgetById(1050202, 70710136, 1)
        globalActor:UnSpawn("Q10502Ruler")
        self:SpawnGadgetById(1050202, 70710139, 2)
        globalActor:UnSpawn("Q10502InkBottle")
        self:SpawnGadgetById(1050202, 70710138, 3)
        globalActor:UnSpawn("Q10502RolledMap")
        self:SpawnGadgetById(1050202, 70710140, 4)
        globalActor:UnSpawn("Q10502OpenBook")
        self:SpawnGadgetById(1050202, 70710115, 5)
        globalActor:UnSpawn("Q10502Magnifier")
        self:SpawnGadgetById(1050202, 70710137, 6)
    elseif arg1 == 6 then
        print("Invoke 6")
        self:FinishQuestID(false, 1050213)
    elseif arg1 == 7 then
        print("Invoke 7")
        globalActor:UnSpawn("Q1050203Box")
    end
end

function Quest10502:RewindFreestyle()
    if self:GetQuestVar(1050203, 0) == 2 then
        self:GetQuestNpcActor(npcs.Npc10095Data1.alias):DoFreeStyle(1280, false)
    end
end

function Quest10502:OnSubStart1050201(arg1)
    print("OnSubStart1050201")
end

function Quest10502:OnSubFinish1050201(arg1)
    print("OnSubFinish1050201")
end

function Quest10502:OnSubFailed1050201(arg1)
    print("OnSubFailed1050201")
end

function Quest10502:OnSubStart1050202(arg1)
    print("OnSubStart1050202")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.Npc10095Data1.alias})
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10095Data1.id, 1)
        arg1_2:RequestInteraction(npcs.Npc10095Data1.alias)
    end, nil, questNpcCreateTask)
end

function Quest10502:OnSubFinish1050202(arg1)
    print("OnSubFinish1050202")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Npc10090Data.alias, 3)
end

function Quest10502:OnSubFailed1050202(arg1)
    print("OnSubFailed1050202")
end

function Quest10502:OnSubStart1050203(arg1)
    print("OnSubStart1050203")
    self:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10111Data.id, 2)
    self:RewindFreestyle()
end

function Quest10502:OnSubFinish1050203(arg1)
    print("OnSubFinish1050203")
    self:UnSpawn(gadgets.GeneralBook.alias)
    self:UnSpawn(gadgets.Ruler.alias)
    self:UnSpawn(gadgets.InkBottle.alias)
    self:UnSpawn(gadgets.RolledMap.alias)
    self:UnSpawn(gadgets.OpenBook.alias)
    self:UnSpawn(gadgets.Magnifier.alias)
end

function Quest10502:OnSubFailed1050203(arg1)
    print("OnSubFailed1050203")
end

function Quest10502:OnSubStart1050204(arg1)
    print("OnSubStart1050204")
    self:CreateQuestNpc(arg1, npcs.Npc10095Data3.id, 1)
    self:GetQuestNpcActor(npcs.Npc10095Data3.alias):SitOnChair(8010)
    globalActor:UnSpawn(gadgets.Diary.alias)
    self:SpawnGadget(arg1, gadgets.Diary.id, 1)
    globalActor:UnSpawn(gadgets.GeneralBook2.alias)
    self:SpawnGadget(arg1, gadgets.GeneralBook2.id, 2)
    globalActor:UnSpawn(gadgets.GeneralBook3.alias)
    self:SpawnGadget(arg1, gadgets.GeneralBook3.id, 3)
    globalActor:UnSpawn(gadgets.Ruler2.alias)
    self:SpawnGadget(arg1, gadgets.Ruler2.id, 4)
    globalActor:UnSpawn(gadgets.InkBottle2.alias)
    self:SpawnGadget(arg1, gadgets.InkBottle2.id, 5)
    globalActor:UnSpawn(gadgets.RolledMap2.alias)
    self:SpawnGadget(arg1, gadgets.RolledMap2.id, 6)
    globalActor:UnSpawn(gadgets.Magnifier2.alias)
    self:SpawnGadget(arg1, gadgets.Magnifier2.id, 7)
    self:RequestInteraction(npcs.Npc10090Data.alias)
end

function Quest10502:OnSubFinish1050204(arg1)
    print("OnSubFinish1050204")
    self:DestroyQuestNpcActor(npcs.Npc10090Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10111Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest10502:OnSubFailed1050204(arg1)
    print("OnSubFailed1050204")
end

function Quest10502:OnSubStart1050205(arg1)
    print("OnSubStart1050205")
    self:GetQuestNpcActor(npcs.Npc10095Data3.alias):SitOnChair(8010)
end

function Quest10502:OnSubFinish1050205(arg1)
    print("OnSubFinish1050205")
end

function Quest10502:OnSubFailed1050205(arg1)
    print("OnSubFailed1050205")
end

function Quest10502:OnSubStart1050206(arg1)
    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc10090Data.alias)
    end)

    self:GetQuestNpcActor(npcs.Npc10095Data3.alias):SitOnChair(8010)
end

function Quest10502:OnSubFinish1050206(arg1)
    print("OnSubFinish1050206")
    self:DestroyQuestNpcActor(npcs.Npc10090Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest10502:OnSubFailed1050206(arg1)
    print("OnSubFailed1050206")
end

function Quest10502:OnSubStart1050207(arg1)
    print("OnSubStart1050207")
    self:GetQuestNpcActor(npcs.Npc10095Data3.alias):SitOnChair(8010)
    actorMgr:CreateActorWithPos(datas.Q10502Trigger_.alias, datas.Q10502Trigger_.script, datas.Q10502Trigger_.id, 0, datas.Q10502Trigger_.point.pos, datas.Q10502Trigger_.point.rot, true, false, 3)
end

function Quest10502:OnSubFinish1050207(arg1)
    print("OnSubFinish1050207")
    self:DestroyQuestNpcActor(npcs.Npc10095Data1.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Npc10090Data.alias, 3)
    globalActor:UnSpawn(gadgets.Box.alias)
    globalActor:UnSpawn(gadgets.Box.alias)
    globalActor:UnSpawn(gadgets.GeneralBook2.alias)
    globalActor:UnSpawn(gadgets.GeneralBook3.alias)
    globalActor:UnSpawn(gadgets.Ruler2.alias)
    globalActor:UnSpawn(gadgets.InkBottle2.alias)
    globalActor:UnSpawn(gadgets.RolledMap2.alias)
    globalActor:UnSpawn(gadgets.Magnifier2.alias)
end

function Quest10502:OnSubFailed1050207(arg1)
    print("OnSubFailed1050207")
end

function Quest10502:OnSubStart1050212(arg1)
    print("OnSubStart1050212")
end

function Quest10502:OnSubFinish1050212(arg1)
    print("OnSubFinish1050212")
end

function Quest10502:OnSubFailed1050212(arg1)
    print("OnSubFailed1050212")
end

function Quest10502:OnSubStart1050213(arg1)
    print("OnSubStart1050213")
end

function Quest10502:OnSubFinish1050213(arg1)
    print("OnSubFinish1050213")
end

function Quest10502:OnSubFailed1050213(arg1)
    print("OnSubFailed1050213")
end

function Quest10502:OnSubStart1050208(arg1)
    print("OnSubStart1050208")
end

function Quest10502:OnSubFinish1050208(arg1)
    print("OnSubFinish1050208")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Npc10095Data1.alias, 3)
end

function Quest10502:OnSubFailed1050208(arg1)
    print("OnSubFailed1050208")
end

function Quest10502:OnSubStart1050209(arg1)
    print("OnSubStart1050209")
end

function Quest10502:OnSubFinish1050209(arg1)
    print("OnSubFinish1050209")
end

function Quest10502:OnSubFailed1050209(arg1)
    print("OnSubFailed1050209")
end

function Quest10502:OnSubStart1050210(arg1)
    print("OnSubStart1050210")
end

function Quest10502:OnSubFinish1050210(arg1)
    print("OnSubFinish1050210")
end

function Quest10502:OnSubFailed1050210(arg1)
    print("OnSubFailed1050210")
end

function Quest10502:OnSubStart1050211(arg1)
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc10095Data2.alias})
    self.ShowBlackScreen(self, 0.5, 1.0, 0, function()
        self:CreateQuestNpc(arg1, npcs.Npc10095Data2.id, 1)
        self:RequestInteraction(npcs.Npc10095Data2.alias)
        self:CreateQuestNpc(arg1, npcs.Npc1606Data.id, 2)
    end, nil, questNpcCreateTask)
end

function Quest10502:OnSubFinish1050211(arg1)
    print("OnSubFinish1050211")
    self:DestroyQuestNpcActor(npcs.Npc10095Data2.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Npc1606Data.alias, 3)
end

function Quest10502:OnSubFailed1050211(arg1)
    print("OnSubFailed1050211")
end

return Quest10502
