require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72682 = class("Quest72682", QuestActorProxy)
Quest72682.defaultAlias = "Quest72682"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72682:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72682:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7268201"] = self.OnSubStart7268201, ["7268202"] = self.OnSubStart7268202}
end

function Quest72682:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7268201"] = self.OnSubFinish7268201, ["7268202"] = self.OnSubFinish7268202}
end

function Quest72682:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72682:Start()
    print("Start")
end

function Quest72682:OnDestroy()
    print("OnDestroy")
end

function Quest72682:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72682:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72682:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30065Data.alias, 3)
end

function Quest72682:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72682:OnSubStart7268201(arg1)
    print("OnSubStart7268201")
    self:CreateQuestNpc(arg1, npcs.Npc30065Data.id, 1)
end

function Quest72682:OnSubFinish7268201(arg1)
    print("OnSubFinish7268201")
    self:ShowBlackScreen(0.1, 2.5, 0.4, function(arg1_2)
        arg1_2:CallDelay(2.3, function(arg1_2)
            arg1_2:TransmitPlayerById(arg1, 7268201)
        end)
    end, nil, nil, datas.Q72682Textmap.NewString, false, true)
end

function Quest72682:OnSubStart7268202(arg1)
    print("OnSubStart7268202")
    self:CreateQuestNpc(arg1, npcs.Npc30065Data.id, 1)
    actorMgr:CreateActorWithPos("Q72682Trigger", "Actor/Gadget/Q72682Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7268202_Player").pos, sceneData:GetDummyPoint(3, "Q7268202_Player").rot, true, false, 3)
end

function Quest72682:OnSubFinish7268202(arg1)
    print("OnSubFinish7268202")
    self:ShowBlackScreen(0.4, 2, 0.4, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc30065Data.alias, 3)
        arg1:ActorDestroy("Q72682Trigger")
    end, function(arg1)
        arg1:ShowTutorialDialog(832)
    end, nil, "", false, true)
end

return Quest72682
