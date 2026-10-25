require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71539 = class("Quest71539", QuestActorProxy)
Quest71539.defaultAlias = "Quest71539"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest71539:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest71539:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7153901"] = self.OnSubStart7153901,
        ["7153902"] = self.OnSubStart7153902,
        ["7153903"] = self.OnSubStart7153903,
        ["7153904"] = self.OnSubStart7153904
    }
end

function Quest71539:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7153901"] = self.OnSubFinish7153901,
        ["7153902"] = self.OnSubFinish7153902,
        ["7153903"] = self.OnSubFinish7153903,
        ["7153904"] = self.OnSubFinish7153904
    }
end

function Quest71539:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71539:Start()
    print("Start")
end

function Quest71539:OnDestroy()
    print("OnDestroy")
end

function Quest71539:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71539:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71539:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30685.alias, 3)
    this:ActorDestroy("Q71539trigger")
end

function Quest71539:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest71539:OnSubStart7153901(arg1)
    print("OnSubStart7153901")
end

function Quest71539:OnSubFinish7153901(arg1)
    print("OnSubFinish7153901")
end

function Quest71539:OnSubStart7153902(arg1)
    print("OnSubStart7153902")
    this:CreateQuestNpc(arg1, npcs.Npc30685.id, 0, false, 0)
end

function Quest71539:OnSubFinish7153902(arg1)
    print("OnSubFinish7153902")
end

function Quest71539:OnSubStart7153903(arg1)
    print("OnSubStart7153903")
end

function Quest71539:OnSubFinish7153903(arg1)
    print("OnSubFinish7153903")
end

function Quest71539:OnSubStart7153904(arg1)
    print("OnSubStart7153904")
    actorMgr:CreateActorWithPos("Q71539trigger", "Actor/Gadget/Q71539trigger", 70900002, 0, points._Q71539triggerPoint_.pos, points._Q71539triggerPoint_.rot, true, false, 3)
end

function Quest71539:OnSubFinish7153904(arg1)
    print("OnSubFinish7153904")
    this:SafeDestroyQuestNpc(npcs.Npc30685.alias, 3)
end

return Quest71539
