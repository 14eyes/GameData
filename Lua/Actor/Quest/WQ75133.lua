require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75133 = class("Quest75133", QuestActorProxy)
Quest75133.defaultAlias = "Quest75133"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75133:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75133:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7513301"] = self.OnSubStart7513301,
        ["7513302"] = self.OnSubStart7513302,
        ["7513303"] = self.OnSubStart7513303,
        ["7513305"] = self.OnSubStart7513305,
        ["7513306"] = self.OnSubStart7513306,
        ["7513307"] = self.OnSubStart7513307,
        ["7513309"] = self.OnSubStart7513309,
        ["7513308"] = self.OnSubStart7513308,
        ["7513304"] = self.OnSubStart7513304
    }
end

function Quest75133:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7513301"] = self.OnSubFinish7513301,
        ["7513302"] = self.OnSubFinish7513302,
        ["7513303"] = self.OnSubFinish7513303,
        ["7513305"] = self.OnSubFinish7513305,
        ["7513306"] = self.OnSubFinish7513306,
        ["7513307"] = self.OnSubFinish7513307,
        ["7513309"] = self.OnSubFinish7513309,
        ["7513308"] = self.OnSubFinish7513308,
        ["7513304"] = self.OnSubFinish7513304
    }
end

function Quest75133:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75133:Start()
    print("Start")
end

function Quest75133:OnDestroy()
    print("OnDestroy")
end

function Quest75133:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75133:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75133:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75133:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75133:OnSubStart7513301(arg1)
    print("OnSubStart7513301")
    actorMgr:CreateActorWithPos("Q7513301_Trigger", "Actor/Gadget/Q7513301_Trigger", 70900002, 0, {x = -137.383, y = 452.96, z = 10018.88}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest75133:OnSubFinish7513301(arg1)
    print("OnSubFinish7513301")
end

function Quest75133:OnSubStart7513302(arg1)
    print("OnSubStart7513302")
    this:CreateQuestNpc(arg1, npcs.Npc21583Data.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21583Data.alias, "", true)
end

function Quest75133:OnSubFinish7513302(arg1)
    print("OnSubFinish7513302")
end

function Quest75133:OnSubStart7513303(arg1)
    print("OnSubStart7513303")
    this:DeployStoryByQuest(147513301)
end

function Quest75133:OnSubFinish7513303(arg1)
    print("OnSubFinish7513303")
end

function Quest75133:OnSubStart7513305(arg1)
    print("OnSubStart7513305")
    actorMgr:CreateActorWithPos("Q7513305_Trigger", "Actor/Gadget/Q7513305_Trigger", 70900002, 0, points._Q7513305_TriggerPoint_.pos, points._Q7513305_TriggerPoint_.rot, true, false, nil)
end

function Quest75133:OnSubFinish7513305(arg1)
    print("OnSubFinish7513305")
    this:SafeDestroyQuestNpc(npcs.Npc21583Data.alias, 3)
    this:ActorDestroy("Q7513305_Trigger")
    this:CancelStoryByQuest(147513301)
end

function Quest75133:OnSubStart7513306(arg1)
    print("OnSubStart7513306")
end

function Quest75133:OnSubFinish7513306(arg1)
    print("OnSubFinish7513306")
end

function Quest75133:OnSubStart7513307(arg1)
    print("OnSubStart7513307")
    this:CreateQuestNpc(arg1, npcs.Npc21583Data.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21583Data.alias, "", true)
end

function Quest75133:OnSubFinish7513307(arg1)
    print("OnSubFinish7513307")
end

function Quest75133:OnSubStart7513309(arg1)
    print("OnSubStart7513309")
end

function Quest75133:OnSubFinish7513309(arg1)
    print("OnSubFinish7513309")
end

function Quest75133:OnSubStart7513308(arg1)
    print("OnSubStart7513308")
end

function Quest75133:OnSubFinish7513308(arg1)
    print("OnSubFinish7513308")
end

function Quest75133:OnSubStart7513304(arg1)
    print("OnSubStart7513304")
    this:RequestInteraction(npcs.Npc21583Data.alias, "", true)
end

function Quest75133:OnSubFinish7513304(arg1)
    print("OnSubFinish7513304")
    this:CreateQuestNpc(arg1, npcs.Npc21602Data.id, 0, false, 0)
end

return Quest75133
