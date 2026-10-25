require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620410Trigger = class("Q7620410Trigger", GadgetActorProxy)
Q7620410Trigger.defaultAlias = "Q7620410Trigger"
local Q76204ClientConfig = require("Quest/Client/Q76204ClientConfig")

local this
local subIDs = Q76204ClientConfig.SubIDs
local datas = Q76204ClientConfig.Datas
local npcs = Q76204ClientConfig.Npcs
local points = Q76204ClientConfig.Points

function Q7620410Trigger:OnPostDataPrepare()
    print("Q7620410Trigger - OnPostDataPrepare")
    this = self
end

function Q7620410Trigger:OnPostComponentPrepare()
    print("Q7620410Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76204)
end

function Q7620410Trigger:TriggerIn()
    print("Q7620410Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7620410})
    this:DestroySelf()
end

function Q7620410Trigger:PreTriggerIn()
    print("Q7620410Trigger - PreTriggerIn")
end

function Q7620410Trigger:LightUpTriggerIn()
    print("Q7620410Trigger - LightUpTriggerIn")
end

function Q7620410Trigger:TriggerOut()
    print("Q7620410Trigger - TriggerOut")
end

return Q7620410Trigger
