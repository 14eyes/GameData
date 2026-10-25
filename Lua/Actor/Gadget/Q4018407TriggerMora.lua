require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4018407TriggerMora = class("Q4018407TriggerMora", GadgetActorProxy)
Q4018407TriggerMora.defaultAlias = "Q4018407TriggerMora"
local Q40184ClientConfig = require("Quest/Client/Q40184ClientConfig")

local this
local subIDs = Q40184ClientConfig.SubIDs
local datas = Q40184ClientConfig.Datas
local npcs = Q40184ClientConfig.Npcs
local points = Q40184ClientConfig.Points

function Q4018407TriggerMora:OnPostDataPrepare()
    print("Q4018407TriggerMora - OnPostDataPrepare")
    this = self
end

function Q4018407TriggerMora:OnPostComponentPrepare()
    print("Q4018407TriggerMora - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40184)
end

function Q4018407TriggerMora:TriggerIn()
    print("Q4018407TriggerMora - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("40184"):QuestNarratorTask(datas.NarratorWithId_4018402, nil)
    actorMgr:GetActor("40184"):EnterSceneLookCamera({x = -547.758, y = 212.509, z = 309.56}, 0, 4, false, true)
end

function Q4018407TriggerMora:PreTriggerIn()
    print("Q4018407TriggerMora - PreTriggerIn")
end

function Q4018407TriggerMora:LightUpTriggerIn()
    print("Q4018407TriggerMora - LightUpTriggerIn")
end

function Q4018407TriggerMora:TriggerOut()
    print("Q4018407TriggerMora - TriggerOut")
end

return Q4018407TriggerMora
