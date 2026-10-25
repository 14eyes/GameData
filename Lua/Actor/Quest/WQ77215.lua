require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77215 = class("Quest77215", QuestActorProxy)
Quest77215.defaultAlias = "Quest77215"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77215:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77215:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7721502"] = self.OnSubStart7721502,
        ["7721503"] = self.OnSubStart7721503,
        ["7721501"] = self.OnSubStart7721501,
        ["7721505"] = self.OnSubStart7721505,
        ["7721504"] = self.OnSubStart7721504
    }
end

function Quest77215:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7721502"] = self.OnSubFinish7721502,
        ["7721503"] = self.OnSubFinish7721503,
        ["7721501"] = self.OnSubFinish7721501,
        ["7721505"] = self.OnSubFinish7721505,
        ["7721504"] = self.OnSubFinish7721504
    }
end

function Quest77215:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77215:Start()
    print("Start")
end

function Quest77215:OnDestroy()
    print("OnDestroy")
end

function Quest77215:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77215:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77215:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77215:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7721501Trigger", 77215)
end

function Quest77215:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 101 then
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest77215:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest77215:OnSubStart7721502(arg1)
    print("OnSubStart7721502")
    this:CreateQuestNpc(arg1, npcs.Npc7884.id, 0, false, 0)
end

function Quest77215:OnSubFinish7721502(arg1)
    print("OnSubFinish7721502")
    this:SafeDestroyQuestNpc(npcs.Npc7884.alias, 3)
end

function Quest77215:OnSubStart7721503(arg1)
    print("OnSubStart7721503")
end

function Quest77215:OnSubFinish7721503(arg1)
    print("OnSubFinish7721503")
end

function Quest77215:OnSubStart7721501(arg1)
    print("OnSubStart7721501")
    this:CreateQuestNpc(arg1, npcs.Npc7842.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7721501Trigger", "Actor/Gadget/Q7721501Trigger", 70900002, 0, points._Q7721501TriggerPoint_.pos, points._Q7721501TriggerPoint_.rot, true, false, 3, nil, 0, 77215)
end

function Quest77215:OnSubFinish7721501(arg1)
    print("OnSubFinish7721501")
end

function Quest77215:OnSubStart7721505(arg1)
    print("OnSubStart7721505")
    this:CreateQuestNpc(arg1, npcs.Npc7842.id, 0, false, 0)
end

function Quest77215:OnSubFinish7721505(arg1)
    print("OnSubFinish7721505")
end

function Quest77215:OnSubStart7721504(arg1)
    print("OnSubStart7721504")
    this:CallDelayByQuest("7721504", 0.5, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7721504})
    end)
end

function Quest77215:OnSubFinish7721504(arg1)
    print("OnSubFinish7721504")
end

return Quest77215
