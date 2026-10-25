require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602244Trigger = class("Q602244Trigger", GadgetActorProxy)
Q602244Trigger.defaultAlias = "Q602244Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602244Trigger:OnPostDataPrepare()
    print("Q602244Trigger - OnPostDataPrepare")
    this = self
end

function Q602244Trigger:OnPostComponentPrepare()
    print("Q602244Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602244Trigger:TriggerIn()
    print("Q602244Trigger - TriggerIn")
end

function Q602244Trigger:PreTriggerIn()
    print("Q602244Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602244)
    this:DestroySelf()
end

function Q602244Trigger:LightUpTriggerIn()
    print("Q602244Trigger - LightUpTriggerIn")
end

function Q602244Trigger:TriggerOut()
    print("Q602244Trigger - TriggerOut")
end

return Q602244Trigger
