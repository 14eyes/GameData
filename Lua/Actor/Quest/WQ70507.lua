require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70507 = class("Quest70507", QuestActorProxy)
Quest70507.defaultAlias = "Quest70507"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest70507:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest70507:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7050701"] = self.OnSubStart7050701,
        ["7050705"] = self.OnSubStart7050705,
        ["7050704"] = self.OnSubStart7050704,
        ["7050702"] = self.OnSubStart7050702,
        ["7050703"] = self.OnSubStart7050703
    }
end

function Quest70507:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7050701"] = self.OnSubFinish7050701,
        ["7050705"] = self.OnSubFinish7050705,
        ["7050704"] = self.OnSubFinish7050704,
        ["7050702"] = self.OnSubFinish7050702,
        ["7050703"] = self.OnSubFinish7050703
    }
end

function Quest70507:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7050702"] = self.OnSubFailed7050702}
end

function Quest70507:Start()
    print("Start")
end

function Quest70507:OnDestroy()
    print("OnDestroy")
end

function Quest70507:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70507:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70507:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 1068)
    actorMgr:GetActor("70507"):UnSpawn(gadgets.Gadget70710667Data.alias)
    actorMgr:DestroyEntityActor("Q70507Trigger", 1068, false)
end

function Quest70507:PaimonDis()
    print("PaimonDis")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)
end

function Quest70507:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        if self:GetSubQuestState(7050702) ~= 3 then
            self:ActionSafeCall(function(arg1)
                actorUtils.ShowContext("ActivityBartenderMakePage", 7050702)
            end)
        else
            print("error BartenderUI call")
        end
    elseif arg1 == 2 then
        local questNPCActor = actorMgr:GetQuestNPCActor("Lisa", 70506)
        local v = actorMgr:GetQuestNPCActor("Npc1006", 70506)
        if questNPCActor ~= nil and v ~= nil then
            questNPCActor:EnableHeadCtrl(false)
            v:EnableHeadCtrl(false)
        else
            print("Lisa or Qin is not here")
        end
    elseif arg1 == 3 then
        local questNPCActor = actorMgr:GetQuestNPCActor("Lisa", 70506)
        local v = actorMgr:GetQuestNPCActor("Npc1006", 70506)
        if questNPCActor ~= nil and v ~= nil then
            questNPCActor:EnableHeadCtrl(true)
            v:EnableHeadCtrl(true)
        else
            print("Lisa or Qin is not here")
        end
    end
end

function Quest70507:OnSubStart7050701(arg1)
    print("OnSubStart7050701")
    actorMgr:CreateActorWithPos("Q70507Trigger", "Actor/Gadget/Q70507Trigger", 70900002, 0, sceneData:GetDummyPoint(1068, "Q7050202_Trans").pos, sceneData:GetDummyPoint(1068, "Q7050202_Trans").rot, true, false, 1068)
end

function Quest70507:OnSubFinish7050701(arg1)
    print("OnSubFinish7050701")
    self:PaimonDis()
end

function Quest70507:OnSubStart7050705(arg1)
    print("OnSubStart7050705")
end

function Quest70507:OnSubFinish7050705(arg1)
    print("OnSubFinish7050705")
end

function Quest70507:OnSubStart7050704(arg1)
    print("OnSubStart7050704")
    self:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc10232Data.alias):SitOnChair(8010)
end

function Quest70507:OnSubFinish7050704(arg1)
    print("OnSubFinish7050704")
end

function Quest70507:OnSubStart7050702(arg1)
    print("OnSubStart7050702")
end

function Quest70507:OnSubFinish7050702(arg1)
    print("OnSubFinish7050702")
end

function Quest70507:OnSubFailed7050702(arg1)
    print("OnSubFailed7050702")
    self:ShowBlackScreen(1, 0.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest70507:OnSubStart7050703(arg1)
    print("OnSubStart7050703")
    self:UnSpawn(gadgets.Gadget70710667Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710667Data.id, 1, 0)
    self:RequestInteraction(npcs.Npc10232Data.alias)
end

function Quest70507:OnSubFinish7050703(arg1)
    print("OnSubFinish7050703")
    self:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 1068)
    self:UnSpawn(gadgets.Gadget70710667Data.alias)
end

return Quest70507
