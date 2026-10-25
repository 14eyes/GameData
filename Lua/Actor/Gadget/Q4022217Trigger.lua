require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022217Trigger = class("Q4022217Trigger", GadgetActorProxy)
Q4022217Trigger.defaultAlias = "Q4022217Trigger"
local Q40222ClientConfig = require("Quest/Client/Q40222ClientConfig")

local this
local subIDs = Q40222ClientConfig.SubIDs
local datas = Q40222ClientConfig.Datas
local npcs = Q40222ClientConfig.Npcs
local points = Q40222ClientConfig.Points

function Q4022217Trigger:OnPostDataPrepare()
    print("Q4022217Trigger - OnPostDataPrepare")
    this = self
end

function Q4022217Trigger:OnPostComponentPrepare()
    print("Q4022217Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40222)
end

function Q4022217Trigger:TriggerIn()
    print("Q4022217Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4022217)
    this:DestroySelf()
end

function Q4022217Trigger:PreTriggerIn()
    print("Q4022217Trigger - PreTriggerIn")
end

function Q4022217Trigger:LightUpTriggerIn()
    print("Q4022217Trigger - LightUpTriggerIn")
end

function Q4022217Trigger:TriggerOut()
    print("Q4022217Trigger - TriggerOut")
end

return Q4022217Trigger
