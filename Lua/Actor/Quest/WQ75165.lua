require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75165 = class("Quest75165", QuestActorProxy)
Quest75165.defaultAlias = "Quest75165"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75165:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75165:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7516501"] = self.OnSubStart7516501,
        ["7516510"] = self.OnSubStart7516510,
        ["7516502"] = self.OnSubStart7516502,
        ["7516507"] = self.OnSubStart7516507,
        ["7516503"] = self.OnSubStart7516503,
        ["7516511"] = self.OnSubStart7516511,
        ["7516504"] = self.OnSubStart7516504,
        ["7516508"] = self.OnSubStart7516508,
        ["7516505"] = self.OnSubStart7516505,
        ["7516506"] = self.OnSubStart7516506,
        ["7516509"] = self.OnSubStart7516509
    }
end

function Quest75165:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7516501"] = self.OnSubFinish7516501,
        ["7516510"] = self.OnSubFinish7516510,
        ["7516502"] = self.OnSubFinish7516502,
        ["7516507"] = self.OnSubFinish7516507,
        ["7516503"] = self.OnSubFinish7516503,
        ["7516511"] = self.OnSubFinish7516511,
        ["7516504"] = self.OnSubFinish7516504,
        ["7516508"] = self.OnSubFinish7516508,
        ["7516505"] = self.OnSubFinish7516505,
        ["7516506"] = self.OnSubFinish7516506,
        ["7516509"] = self.OnSubFinish7516509
    }
end

function Quest75165:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75165:Start()
    print("Start")
end

function Quest75165:OnDestroy()
    print("OnDestroy")
end

function Quest75165:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75165:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75165:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75165:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7516506Trigger")
end

function Quest75165:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75165:OnSubStart7516501(arg1)
    print("OnSubStart7516501")
end

function Quest75165:OnSubFinish7516501(arg1)
    print("OnSubFinish7516501")
end

function Quest75165:OnSubStart7516510(arg1)
    print("OnSubStart7516510")
end

function Quest75165:OnSubFinish7516510(arg1)
    print("OnSubFinish7516510")
end

function Quest75165:OnSubStart7516502(arg1)
    print("OnSubStart7516502")
end

function Quest75165:OnSubFinish7516502(arg1)
    print("OnSubFinish7516502")
end

function Quest75165:OnSubStart7516507(arg1)
    print("OnSubStart7516507")
end

function Quest75165:OnSubFinish7516507(arg1)
    print("OnSubFinish7516507")
end

function Quest75165:OnSubStart7516503(arg1)
    print("OnSubStart7516503")
end

function Quest75165:OnSubFinish7516503(arg1)
    print("OnSubFinish7516503")
end

function Quest75165:OnSubStart7516511(arg1)
    print("OnSubStart7516511")
end

function Quest75165:OnSubFinish7516511(arg1)
    print("OnSubFinish7516511")
end

function Quest75165:OnSubStart7516504(arg1)
    print("OnSubStart7516504")
end

function Quest75165:OnSubFinish7516504(arg1)
    print("OnSubFinish7516504")
end

function Quest75165:OnSubStart7516508(arg1)
    print("OnSubStart7516508")
end

function Quest75165:OnSubFinish7516508(arg1)
    print("OnSubFinish7516508")
end

function Quest75165:OnSubStart7516505(arg1)
    print("OnSubStart7516505")
end

function Quest75165:OnSubFinish7516505(arg1)
    print("OnSubFinish7516505")
end

function Quest75165:OnSubStart7516506(arg1)
    print("OnSubStart7516506")
    this:CreateQuestNpc(arg1, npcs.Npc6458.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6458.alias, 75165):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6462.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7516506Trigger", "Actor/Gadget/Q7516506Trigger", 70900002, 0, points._Q7516506TriggerPoint_.pos, points._Q7516506TriggerPoint_.rot, true, false, 3)
end

function Quest75165:OnSubFinish7516506(arg1)
    print("OnSubFinish7516506")
end

function Quest75165:OnSubStart7516509(arg1)
    print("OnSubStart7516509")
end

function Quest75165:OnSubFinish7516509(arg1)
    print("OnSubFinish7516509")
end

return Quest75165
