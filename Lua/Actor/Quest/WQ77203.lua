require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77203 = class("Quest77203", QuestActorProxy)
Quest77203.defaultAlias = "Quest77203"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77203:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77203:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7720301"] = self.OnSubStart7720301,
        ["7720302"] = self.OnSubStart7720302,
        ["7720303"] = self.OnSubStart7720303,
        ["7720304"] = self.OnSubStart7720304
    }
end

function Quest77203:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7720301"] = self.OnSubFinish7720301,
        ["7720302"] = self.OnSubFinish7720302,
        ["7720303"] = self.OnSubFinish7720303,
        ["7720304"] = self.OnSubFinish7720304
    }
end

function Quest77203:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77203:Start()
    print("Start")
end

function Quest77203:OnDestroy()
    print("OnDestroy")
end

function Quest77203:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77203:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77203:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77203:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7720301Trigger", 77203)
end

function Quest77203:ActorDestroy(arg1, arg2)
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

function Quest77203:OnSubStart7720301(arg1)
    print("OnSubStart7720301")
    this:CreateQuestNpc(arg1, npcs.Npc22653.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7720301Trigger", "Actor/Gadget/Q7720301Trigger", 70900002, 0, points._Q7720301TriggerPoint_.pos, points._Q7720301TriggerPoint_.rot, true, false, 3, nil, 0, 77203)
end

function Quest77203:OnSubFinish7720301(arg1)
    print("OnSubFinish7720301")
end

function Quest77203:OnSubStart7720302(arg1)
    print("OnSubStart7720302")
    this:CreateQuestNpc(arg1, npcs.Npc22653.id, 0, false, 0)
end

function Quest77203:OnSubFinish7720302(arg1)
    print("OnSubFinish7720302")
end

function Quest77203:OnSubStart7720303(arg1)
    print("OnSubStart7720303")
end

function Quest77203:OnSubFinish7720303(arg1)
    print("OnSubFinish7720303")
end

function Quest77203:OnSubStart7720304(arg1)
    print("OnSubStart7720304")
    actorUtils.FinishQuestWithParam({false}, {7720304})
end

function Quest77203:OnSubFinish7720304(arg1)
    print("OnSubFinish7720304")
end

return Quest77203
