require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2002 = class("Quest2002", QuestActorProxy)
Quest2002.defaultAlias = "Quest2002"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest2002:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest2002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["200202"] = self.OnSubStart200202,
        ["200203"] = self.OnSubStart200203,
        ["200213"] = self.OnSubStart200213,
        ["200204"] = self.OnSubStart200204,
        ["200201"] = self.OnSubStart200201,
        ["200205"] = self.OnSubStart200205,
        ["200206"] = self.OnSubStart200206,
        ["200207"] = self.OnSubStart200207,
        ["200208"] = self.OnSubStart200208,
        ["200209"] = self.OnSubStart200209,
        ["200210"] = self.OnSubStart200210,
        ["200211"] = self.OnSubStart200211,
        ["200212"] = self.OnSubStart200212
    }
end

function Quest2002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["200202"] = self.OnSubFinish200202,
        ["200203"] = self.OnSubFinish200203,
        ["200213"] = self.OnSubFinish200213,
        ["200204"] = self.OnSubFinish200204,
        ["200201"] = self.OnSubFinish200201,
        ["200205"] = self.OnSubFinish200205,
        ["200206"] = self.OnSubFinish200206,
        ["200207"] = self.OnSubFinish200207,
        ["200208"] = self.OnSubFinish200208,
        ["200209"] = self.OnSubFinish200209,
        ["200210"] = self.OnSubFinish200210,
        ["200211"] = self.OnSubFinish200211,
        ["200212"] = self.OnSubFinish200212
    }
end

function Quest2002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["200202"] = self.OnSubFailed200202,
        ["200203"] = self.OnSubFailed200203,
        ["200213"] = self.OnSubFailed200213,
        ["200204"] = self.OnSubFailed200204,
        ["200201"] = self.OnSubFailed200201,
        ["200205"] = self.OnSubFailed200205,
        ["200206"] = self.OnSubFailed200206,
        ["200207"] = self.OnSubFailed200207,
        ["200208"] = self.OnSubFailed200208,
        ["200209"] = self.OnSubFailed200209,
        ["200210"] = self.OnSubFailed200210,
        ["200211"] = self.OnSubFailed200211,
        ["200212"] = self.OnSubFailed200212
    }
end

function Quest2002:Start()
    print("Start")
end

function Quest2002:OnDestroy()
    print("OnDestroy")
end

function Quest2002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2002:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2002:PaimonDis()
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)

    self:ActionSafeCall(function(arg1)
        local actor = actorMgr:GetActor(npcs.PaimonData.alias)
        if actor ~= nil then
            if actor.uActor ~= nil then
                actor:DestroyWithDisappear(false)
            end
        end
    end)
end

function Quest2002:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local actor = actorMgr:GetActor(actorAlias)
        actor.TransmitPlayerByQuestId(actor, 200211, 1)
        self:ActionSafeCall(function(arg1)
            local questNpcActor = actor:GetQuestNpcActor(npcs.PaimonData.alias)
            if questNpcActor ~= nil then
                if questNpcActor.uActor ~= nil then
                    questNpcActor:Destroy(false)
                end
            end
        end)
    elseif arg1 == 2 then
        self:ShowQuestLikingBar(2002, 10414, 80, false, "QUEST_Message_Q2002")
    elseif arg1 == 3 then
        self:SpawnGadgetById(200209, gadgets.Gadget70710386Data.id, 1)
    elseif arg1 == 4 then
        self:SpawnGadgetById(200211, gadgets.Gadget70710386Data.id, 1)
    elseif arg1 == 5 then
        self:UnSpawn(gadgets.Gadget70710386Data.alias)
    elseif arg1 == 6 then
        actorMgr:GetActor(actorAlias):FinishQuestID(false, 200213)
    elseif arg1 == 7 then
        self:ActionSafeCall(function(arg1)
            local questNpcActor = actorMgr:GetActor(actorAlias):GetQuestNpcActor(npcs.PaimonData.alias)
            if questNpcActor ~= nil then
                if questNpcActor.uActor ~= nil then
                    questNpcActor:DestroyWithDisappear(false)
                end
            end
        end)
    elseif arg1 == 11 then
        self:UpdateQuestLikingBar(90, false, "QUEST_Message_Q2002")
    elseif arg1 == 12 then
        self:UpdateQuestLikingBar(60, false, "QUEST_Message_Q2002")
    elseif arg1 == 13 then
        self:UpdateQuestLikingBar(50, false, "QUEST_Message_Q2002")
    elseif arg1 == 14 then
        self:UpdateQuestLikingBar(25, true, "QUEST_Message_Q2002")
    elseif arg1 == 15 then
        self:UpdateQuestLikingBar(0, true, "QUEST_Message_Q2002")
    end
end

function Quest2002:RequestFeifei()
    print("RequestFeifei")
    self:CreateQuestNpcById(200210, npcs.Npc10414Data.id, 0)
    self:RequestInteraction(npcs.Npc10414Data.alias)
end

function Quest2002:Transmit05()
    print("Transmit05")
    self:TransmitPlayerByQuestId(200205, 1)
end

function Quest2002:Transmit07()
    print("Transmit07")
    self:TransmitPlayerByQuestId(200207, 1)
end

function Quest2002:OnSubStart200202(arg1)
    print("OnSubStart200202")
    self:CreateQuestNpc(arg1, npcs.Npc1031Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 2)
    actorMgr:CreateActorWithPos(datas.Q200202Trigger_.alias, datas.Q200202Trigger_.script, datas.Q200202Trigger_.id, 0, datas.Q200202Trigger_.point.pos, datas.Q200202Trigger_.point.rot, true, false, 3)
end

function Quest2002:OnSubFinish200202(arg1)
    print("OnSubFinish200202")
    self:SafeDestroyQuestNpc(npcs.Npc10419Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10420Data.alias, 3)
end

function Quest2002:OnSubFailed200202(arg1)
    print("OnSubFailed200202")
end

function Quest2002:OnSubStart200203(arg1)
    print("OnSubStart200203")
    self:CreateQuestNpc(arg1, npcs.Npc1031Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 2)
    self:UnSpawn(gadgets.Gadget70710357Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710357Data.id, 1, 0)
end

function Quest2002:OnSubFinish200203(arg1)
    print("OnSubFinish200203")
    self:UnSpawn(gadgets.Gadget70710357Data.alias)
end

function Quest2002:OnSubFailed200203(arg1)
    print("OnSubFailed200203")
end

function Quest2002:OnSubStart200213(arg1)
    print("OnSubStart200213")
end

function Quest2002:OnSubFinish200213(arg1)
    print("OnSubFinish200213")
end

function Quest2002:OnSubFailed200213(arg1)
    print("OnSubFailed200213")
end

function Quest2002:OnSubStart200204(arg1)
    print("OnSubStart200204")
    self:RequestInteraction(npcs.Npc1031Data.alias)
end

function Quest2002:OnSubFinish200204(arg1)
    print("OnSubFinish200204")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:PaimonDis()
end

function Quest2002:OnSubFailed200204(arg1)
    print("OnSubFailed200204")
end

function Quest2002:OnSubStart200201(arg1)
    print("OnSubStart200201")
    actorMgr:CreateActorWithPos(datas.Q200201Trigger_.alias, datas.Q200201Trigger_.script, datas.Q200201Trigger_.id, 0, datas.Q200201Trigger_.point.pos, datas.Q200201Trigger_.point.rot, true, false, 3)
end

function Quest2002:OnSubFinish200201(arg1)
    print("OnSubFinish200201")
    self:NarratorOnlyTaskByData(datas.NarratorWithId01)
end

function Quest2002:OnSubFailed200201(arg1)
    print("OnSubFailed200201")
end

function Quest2002:OnSubStart200205(arg1)
    print("OnSubStart200205")
    actorMgr:CreateActorWithPos(datas.Q200205Trigger_.alias, datas.Q200205Trigger_.script, datas.Q200205Trigger_.id, 0, datas.Q200205Trigger_.point.pos, datas.Q200205Trigger_.point.rot, true, false, 3)
end

function Quest2002:OnSubFinish200205(arg1)
    print("OnSubFinish200205")
    self:SafeDestroyQuestNpc(npcs.Npc1031Data.alias, 3)
    self:NarratorOnlyTaskByData(datas.NarratorWithId02)
end

function Quest2002:OnSubFailed200205(arg1)
    print("OnSubFailed200205")
    self:Transmit05()
end

function Quest2002:OnSubStart200206(arg1)
    print("OnSubStart200206")
    self:UnSpawn(gadgets.Gadget70710358Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710358Data.id, 1, 0)
end

function Quest2002:OnSubFinish200206(arg1)
    print("OnSubFinish200206")
    self:UnSpawn(gadgets.Gadget70710358Data.alias)
    self:NarratorOnlyTaskByData(datas.NarratorWithId03)
end

function Quest2002:OnSubFailed200206(arg1)
    print("OnSubFailed200206")
end

function Quest2002:OnSubStart200207(arg1)
    print("OnSubStart200207")
    actorMgr:CreateActorWithPos(datas.Q200207Trigger_.alias, datas.Q200207Trigger_.script, datas.Q200207Trigger_.id, 0, datas.Q200207Trigger_.point.pos, datas.Q200207Trigger_.point.rot, true, false, 3)
end

function Quest2002:OnSubFinish200207(arg1)
    print("OnSubFinish200207")
end

function Quest2002:OnSubFailed200207(arg1)
    print("OnSubFailed200207")
    self:Transmit07()
end

function Quest2002:OnSubStart200208(arg1)
    print("OnSubStart200208")
    self:NarratorOnlyTaskByData(datas.NarratorWithId05)
end

function Quest2002:OnSubFinish200208(arg1)
    print("OnSubFinish200208")
end

function Quest2002:OnSubFailed200208(arg1)
    print("OnSubFailed200208")
end

function Quest2002:OnSubStart200209(arg1)
    print("OnSubStart200209")
    self:CreateQuestNpc(arg1, npcs.Npc10414Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc10414Data.alias):DoFreeStyle(1160, true, nil, true, true, false)
    self:HideQuestLikingBar()
    self:UnSpawn(gadgets.Gadget70710386Data.alias)
    actorMgr:CreateActorWithPos(datas.Q200209Trigger_.alias, datas.Q200209Trigger_.script, datas.Q200209Trigger_.id, 0, datas.Q200209Trigger_.point.pos, datas.Q200209Trigger_.point.rot, true, false, 3)
end

function Quest2002:OnSubFinish200209(arg1)
    print("OnSubFinish200209")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10414Data.alias, 3)
    self:PaimonDis()
    self:HideQuestLikingBar()
end

function Quest2002:OnSubFailed200209(arg1)
    print("OnSubFailed200209")
end

function Quest2002:OnSubStart200210(arg1)
    print("OnSubStart200210")
    self:GetQuestNpcActor(npcs.Npc10414Data.alias):DoFreeStyle(1070, true, nil, true, true, false)
end

function Quest2002:OnSubFinish200210(arg1)
    print("OnSubFinish200210")
    self:CallDelay(2, self.RequestFeifei)
end

function Quest2002:OnSubFailed200210(arg1)
    print("OnSubFailed200210")
end

function Quest2002:OnSubStart200211(arg1)
    print("OnSubStart200211")
    self:GetQuestNpcActor(npcs.Npc10414Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
    self:UnSpawn(gadgets.Gadget70710386Data.alias)
end

function Quest2002:OnSubFinish200211(arg1)
    print("OnSubFinish200211")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10414Data.alias, 3)
end

function Quest2002:OnSubFailed200211(arg1)
    print("OnSubFailed200211")
end

function Quest2002:OnSubStart200212(arg1)
    print("OnSubStart200212")
    self:CreateQuestNpc(arg1, npcs.Npc214301Data.id, 1)
end

function Quest2002:OnSubFinish200212(arg1)
    print("OnSubFinish200212")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc214301Data.alias, 3)
    self:PaimonDis()
end

function Quest2002:OnSubFailed200212(arg1)
    print("OnSubFailed200212")
end

return Quest2002
