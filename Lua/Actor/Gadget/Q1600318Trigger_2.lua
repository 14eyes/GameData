require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600318Trigger_2 = class("Q1600318Trigger_2", GadgetActorProxy)
Q1600318Trigger_2.defaultAlias = "Q1600318Trigger_2"
local Q16003ClientConfig = require("Quest/Client/Q16003ClientConfig")

local this
local subIDs = Q16003ClientConfig.SubIDs
local datas = Q16003ClientConfig.Datas
local npcs = Q16003ClientConfig.Npcs
local points = Q16003ClientConfig.Points

function Q1600318Trigger_2:OnPostDataPrepare()
    print("Q1600318Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q1600318Trigger_2:OnPostComponentPrepare()
    print("Q1600318Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16003)
end

function Q1600318Trigger_2:TriggerIn()
    print("Q1600318Trigger_2 - TriggerIn")
end

function Q1600318Trigger_2:PreTriggerIn()
    print("Q1600318Trigger_2 - PreTriggerIn")
end

function Q1600318Trigger_2:LightUpTriggerIn()
    print("Q1600318Trigger_2 - LightUpTriggerIn")
    actorUtils.FinishQuestID(false, 1600318)
end

function Q1600318Trigger_2:TriggerOut()
    print("Q1600318Trigger_2 - TriggerOut")
end

return Q1600318Trigger_2
