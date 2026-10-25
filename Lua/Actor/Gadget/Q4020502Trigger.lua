require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020502Trigger = class("Q4020502Trigger", GadgetActorProxy)
Q4020502Trigger.defaultAlias = "Q4020502Trigger"
local Q40205ClientConfig = require("Quest/Client/Q40205ClientConfig")

local this
local subIDs = Q40205ClientConfig.SubIDs
local datas = Q40205ClientConfig.Datas
local npcs = Q40205ClientConfig.Npcs
local points = Q40205ClientConfig.Points

function Q4020502Trigger:OnPostDataPrepare()
    print("Q4020502Trigger - OnPostDataPrepare")
    this = self
end

function Q4020502Trigger:OnPostComponentPrepare()
    print("Q4020502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40205)
end

function Q4020502Trigger:TriggerIn()
    print("Q4020502Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4020502)
    this:DestroySelf()
end

function Q4020502Trigger:PreTriggerIn()
    print("Q4020502Trigger - PreTriggerIn")
end

function Q4020502Trigger:LightUpTriggerIn()
    print("Q4020502Trigger - LightUpTriggerIn")
end

function Q4020502Trigger:TriggerOut()
    print("Q4020502Trigger - TriggerOut")
end

return Q4020502Trigger
