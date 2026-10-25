require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11202 = class("Quest11202", QuestActorProxy)
Quest11202.defaultAlias = "Quest11202"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11202:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11202:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1120201"] = self.OnSubStart1120201,
        ["1120202"] = self.OnSubStart1120202,
        ["1120203"] = self.OnSubStart1120203,
        ["1120204"] = self.OnSubStart1120204,
        ["1120205"] = self.OnSubStart1120205,
        ["1120206"] = self.OnSubStart1120206,
        ["1120207"] = self.OnSubStart1120207,
        ["1120208"] = self.OnSubStart1120208,
        ["1120209"] = self.OnSubStart1120209,
        ["1120210"] = self.OnSubStart1120210,
        ["1120211"] = self.OnSubStart1120211,
        ["1120212"] = self.OnSubStart1120212
    }
end

function Quest11202:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1120201"] = self.OnSubFinish1120201,
        ["1120202"] = self.OnSubFinish1120202,
        ["1120203"] = self.OnSubFinish1120203,
        ["1120204"] = self.OnSubFinish1120204,
        ["1120205"] = self.OnSubFinish1120205,
        ["1120206"] = self.OnSubFinish1120206,
        ["1120207"] = self.OnSubFinish1120207,
        ["1120208"] = self.OnSubFinish1120208,
        ["1120209"] = self.OnSubFinish1120209,
        ["1120210"] = self.OnSubFinish1120210,
        ["1120211"] = self.OnSubFinish1120211,
        ["1120212"] = self.OnSubFinish1120212
    }
end

function Quest11202:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1120201"] = self.OnSubFailed1120201,
        ["1120202"] = self.OnSubFailed1120202,
        ["1120203"] = self.OnSubFailed1120203,
        ["1120204"] = self.OnSubFailed1120204,
        ["1120205"] = self.OnSubFailed1120205,
        ["1120206"] = self.OnSubFailed1120206,
        ["1120207"] = self.OnSubFailed1120207,
        ["1120208"] = self.OnSubFailed1120208,
        ["1120209"] = self.OnSubFailed1120209,
        ["1120210"] = self.OnSubFailed1120210,
        ["1120211"] = self.OnSubFailed1120211,
        ["1120212"] = self.OnSubFailed1120212
    }
end

function Quest11202:Start()
    print("Start")
end

function Quest11202:OnDestroy()
    print("OnDestroy")
end

function Quest11202:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11202:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11202:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11202:StartTalk08()
    print("StartTalk08")
    self:CreateQuestNpcById(1120208, npcs.Npc10317Data.id, 0)
    self:RequestInteraction("Npc10317")
end

function Quest11202:StartTalk11()
    print("StartTalk11")
    self:CreateQuestNpcById(1120211, npcs.Npc10318Data.id, 0)
    self:RequestInteraction(npcs.Npc10318Data.alias)
end

function Quest11202:Start08()
    print("Start08")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk08, nil, nil, "")
end

function Quest11202:Start11()
    print("Start11")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk11, nil, nil, "")
end

function Quest11202:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11202:OnSubStart1120201(arg1)
    print("OnSubStart1120201")
end

function Quest11202:OnSubFinish1120201(arg1)
    print("OnSubFinish1120201")
    self:DestroyQuestNpcActor(npcs.Npc10233Data.alias, 3)
end

function Quest11202:OnSubFailed1120201(arg1)
    print("OnSubFailed1120201")
end

function Quest11202:OnSubStart1120202(arg1)
    print("OnSubStart1120202")
    self:CreateQuestNpc(arg1, npcs.Npc2027Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc2028Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc2103Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc2103Data.alias):DoFreeStyle(1170, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc2027Data.alias):DoFreeStyle(1240, true, nil, true, true)
end

function Quest11202:OnSubFinish1120202(arg1)
    print("OnSubFinish1120202")
    self:PaimonVanish()
end

function Quest11202:OnSubFailed1120202(arg1)
    print("OnSubFailed1120202")
end

function Quest11202:OnSubStart1120203(arg1)
    print("OnSubStart1120203")
    actorMgr:CreateActorWithPos(datas.Q11202Trigger_.alias, "Actor/Gadget/Q11202Trigger", datas.Q11202Trigger_.id, 0, datas.Q11202Trigger_.point.pos, datas.Q11202Trigger_.point.rot, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc10300Data.id, 0)
    actorMgr:CreateActorWithPos(datas.Q1120208Trigger_.alias, datas.Q1120208Trigger_.script, datas.Q1120208Trigger_.id, 0, datas.Q1120208Trigger_.point.pos, datas.Q1120208Trigger_.point.rot, true, false, 3)
end

function Quest11202:OnSubFinish1120203(arg1)
    print("OnSubFinish1120203")
end

function Quest11202:OnSubFailed1120203(arg1)
    print("OnSubFailed1120203")
end

function Quest11202:OnSubStart1120204(arg1)
    print("OnSubStart1120204")
end

function Quest11202:OnSubFinish1120204(arg1)
    print("OnSubFinish1120204")
    self:PaimonVanish()
end

function Quest11202:OnSubFailed1120204(arg1)
    print("OnSubFailed1120204")
end

function Quest11202:OnSubStart1120205(arg1)
    print("OnSubStart1120205")
    self:CreateQuestNpc(arg1, npcs.Npc10299Data.id, 0)
    actorMgr:CreateActorWithPos(datas.Q1120205Trigger_.alias, datas.Q1120205Trigger_.script, datas.Q1120205Trigger_.id, 0, datas.Q1120205Trigger_.point.pos, datas.Q1120205Trigger_.point.rot, true, false, 3)
end

function Quest11202:OnSubFinish1120205(arg1)
    print("OnSubFinish1120205")
    self:PaimonVanish()
end

function Quest11202:OnSubFailed1120205(arg1)
    print("OnSubFailed1120205")
end

function Quest11202:OnSubStart1120206(arg1)
    print("OnSubStart1120206")
    self:CreateQuestNpc(arg1, npcs.Npc10299Data.id, 0)
    actorMgr:CreateActorWithPos(datas.Q112026Trigger_.alias, datas.Q112026Trigger_.script, datas.Q112026Trigger_.id, 0, datas.Q112026Trigger_.point.pos, datas.Q112026Trigger_.point.rot, true, false, 3)
end

function Quest11202:OnSubFinish1120206(arg1)
    print("OnSubFinish1120206")
end

function Quest11202:OnSubFailed1120206(arg1)
    print("OnSubFailed1120206")
end

function Quest11202:OnSubStart1120207(arg1)
    print("OnSubStart1120207")
    self:NarratorOnlyTaskByData(datas.NarratorWithId2, nil, 0)
end

function Quest11202:OnSubFinish1120207(arg1)
    print("OnSubFinish1120207")
end

function Quest11202:OnSubFailed1120207(arg1)
    print("OnSubFailed1120207")
end

function Quest11202:OnSubStart1120208(arg1)
    print("OnSubStart1120208")
    self:CreateQuestNpc(arg1, npcs.Npc10233Data.id, 0)
    self:CallDelay(2, self.Start08)
end

function Quest11202:OnSubFinish1120208(arg1)
    print("OnSubFinish1120208")
    self:DestroyQuestNpcActor(npcs.Npc10317Data.alias, 3)
    self:PaimonVanish()
end

function Quest11202:OnSubFailed1120208(arg1)
    print("OnSubFailed1120208")
end

function Quest11202:OnSubStart1120209(arg1)
    print("OnSubStart1120209")
    self:CreateQuestNpc(arg1, npcs.Npc10318Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10339Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10340Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10233Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):DoFreeStyle(1050, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc10339Data.alias):DoFreeStyle(1240, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc10318Data.alias):DoFreeStyle(1120, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc10340Data.alias):DoFreeStyle(4100, true, nil, true, true)
    actorMgr:CreateActorWithPos(datas.Q1120209Trigger_.alias, datas.Q1120209Trigger_.script, datas.Q1120209Trigger_.id, 0, datas.Q1120209Trigger_.point.pos, datas.Q1120209Trigger_.point.rot, true, false, 3)
end

function Quest11202:OnSubFinish1120209(arg1)
    print("OnSubFinish1120209")
    self:DestroyQuestNpcActor(npcs.Npc10318Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10339Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10340Data.alias, 3)
    self:PaimonVanish()
end

function Quest11202:OnSubFailed1120209(arg1)
    print("OnSubFailed1120209")
end

function Quest11202:OnSubStart1120210(arg1)
    print("OnSubStart1120210")
    self:CreateSpeechBubbleTask(npcs.Npc10233Data.id, 112019201, 10, true, 5, 6)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc10233Data.alias)
    questNpcActor:Standby()
    questNpcActor:TurnTo(sceneData:GetDummyPoint(3, "Q1120209QiqiTurn"))
end

function Quest11202:OnSubFinish1120210(arg1)
    print("OnSubFinish1120210")
    self:ClearSpeechBubbleTask()
end

function Quest11202:OnSubFailed1120210(arg1)
    print("OnSubFailed1120210")
end

function Quest11202:OnSubStart1120211(arg1)
    print("OnSubStart1120211")
    self:CallDelay(2, self.Start11)
end

function Quest11202:OnSubFinish1120211(arg1)
    print("OnSubFinish1120211")
    self:DestroyQuestNpcActor(npcs.Npc10318Data.alias, 3)
    self:PaimonVanish()
    self:DestroyQuestNpcActor(npcs.Npc10233Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10317Data.alias, 3)
end

function Quest11202:OnSubFailed1120211(arg1)
    print("OnSubFailed1120211")
end

function Quest11202:OnSubStart1120212(arg1)
    print("OnSubStart1120212")
    self:CreateQuestNpc(arg1, npcs.Npc10234Data.id, 0)
    self:DestroyQuestNpcActor(npcs.Npc2027Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2028Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2103Data.alias, 3)
    self:NotifyTo("Npc2068", 1, true)
end

function Quest11202:OnSubFinish1120212(arg1)
    print("OnSubFinish1120212")
    self:PaimonVanish()
    self:DestroyQuestNpcActor(npcs.Npc10234Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10233Data.alias, 3)
    self:NotifyTo("Npc2068", 0, true)
end

function Quest11202:OnSubFailed1120212(arg1)
    print("OnSubFailed1120212")
end

return Quest11202
