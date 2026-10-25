require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13023 = class("Quest13023", QuestActorProxy)
Quest13023.defaultAlias = "Quest13023"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest13023:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest13023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1302304"] = self.OnSubStart1302304,
        ["1302303"] = self.OnSubStart1302303,
        ["1302302"] = self.OnSubStart1302302,
        ["1302301"] = self.OnSubStart1302301
    }
end

function Quest13023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1302304"] = self.OnSubFinish1302304,
        ["1302303"] = self.OnSubFinish1302303,
        ["1302302"] = self.OnSubFinish1302302,
        ["1302301"] = self.OnSubFinish1302301
    }
end

function Quest13023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13023:Start()
    print("Start")
end

function Quest13023:OnDestroy()
    print("OnDestroy")
end

function Quest13023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13023:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13023:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest13023:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13023:OnSubStart1302304(arg1)
    print("OnSubStart1302304")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 0)
        actorMgr:CreateActorWithPos("Q13023Trigger", "Actor/Gadget/Q13023Trigger", 70900002, 0, {x = 16.953, y = 0.06, z = 9.389}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1079)
    end)
end

function Quest13023:OnSubFinish1302304(arg1)
    print("OnSubFinish1302304")
    this:NpcDestroy(npcs.Npc1064Data.alias, 1079)
    this:DestroyQuestNpcActor(npcs.Npc1053Data.alias, 1079)
    this:ActorDestroy("Q13023Trigger")
end

function Quest13023:OnSubStart1302303(arg1)
    print("OnSubStart1302303")
end

function Quest13023:OnSubFinish1302303(arg1)
    print("OnSubFinish1302303")
end

function Quest13023:OnSubStart1302302(arg1)
    print("OnSubStart1302302")
    this:TransmitPlayerById(arg1, 1)
end

function Quest13023:OnSubFinish1302302(arg1)
    print("OnSubFinish1302302")
end

function Quest13023:OnSubStart1302301(arg1)
    print("OnSubStart1302301")
end

function Quest13023:OnSubFinish1302301(arg1)
    print("OnSubFinish1302301")
end

return Quest13023
