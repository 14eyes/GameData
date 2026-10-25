require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12014 = class("Quest12014", QuestActorProxy)
Quest12014.defaultAlias = "Quest12014"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12014:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12014:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1201401"] = self.OnSubStart1201401}
end

function Quest12014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1201401"] = self.OnSubFinish1201401}
end

function Quest12014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1201401"] = self.OnSubFailed1201401}
end

function Quest12014:Start()
    print("Start")
end

function Quest12014:OnDestroy()
    print("OnDestroy")
end

function Quest12014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12014:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12014:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12014:OnSubStart1201401(arg1)
    print("OnSubStart1201401")
    this:CreateQuestNpc(arg1, npcs.Npc1035Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q12014Trigger_Final_.alias, datas.Q12014Trigger_Final_.script, datas.Q12014Trigger_Final_.id, 0, datas.Q12014Trigger_Final_.point.pos, datas.Q12014Trigger_Final_.point.rot, true, false, 3)
end

function Quest12014:OnSubFinish1201401(arg1)
    print("OnSubFinish1201401")
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    this:ActorDestroy(datas.Q12014Trigger_Final_.alias)
end

function Quest12014:OnSubFailed1201401(arg1)
    print("OnSubFailed1201401")
end

return Quest12014
