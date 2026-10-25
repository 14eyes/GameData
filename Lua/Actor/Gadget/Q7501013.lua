require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501013 = class("Q7501013", GadgetActorProxy)
Q7501013.defaultAlias = "Q7501013"
local Q75010ClientConfig = require("Quest/Client/Q75010ClientConfig")

local this
local subIDs = Q75010ClientConfig.SubIDs
local datas = Q75010ClientConfig.Datas
local npcs = Q75010ClientConfig.Npcs
local points = Q75010ClientConfig.Points

function Q7501013:OnPostDataPrepare()
    print("Q7501013 - OnPostDataPrepare")
    this = self
end

function Q7501013:OnPostComponentPrepare()
    print("Q7501013 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75010)
end

function Q7501013:TriggerIn()
    print("Q7501013 - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("75010"):EnterSceneLookCamera({x = -2256.966, y = 233.087, z = 8745.253}, 0, 2, false, false)
    actorMgr:GetActor("75010"):QuestNarratorTask(datas.NarratorWithId_7501096, nil)
    actorMgr:GetActor("75010"):CallDelayByQuest("1", 2.5, function(arg1)
        actorMgr:GetActor("75010"):RequestInteraction(npcs.Npc21491.alias, "", true)
    end)
end

function Q7501013:PreTriggerIn()
    print("Q7501013 - PreTriggerIn")
end

function Q7501013:LightUpTriggerIn()
    print("Q7501013 - LightUpTriggerIn")
end

function Q7501013:TriggerOut()
    print("Q7501013 - TriggerOut")
end

return Q7501013
