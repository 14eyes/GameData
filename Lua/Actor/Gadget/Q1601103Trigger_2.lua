require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601103Trigger_2 = class("Q1601103Trigger_2", GadgetActorProxy)
Q1601103Trigger_2.defaultAlias = "Q1601103Trigger_2"
local Q16011ClientConfig = require("Quest/Client/Q16011ClientConfig")

local this
local subIDs = Q16011ClientConfig.SubIDs
local datas = Q16011ClientConfig.Datas
local npcs = Q16011ClientConfig.Npcs
local points = Q16011ClientConfig.Points

function Q1601103Trigger_2:OnPostDataPrepare()
    print("Q1601103Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q1601103Trigger_2:OnPostComponentPrepare()
    print("Q1601103Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16011)
end

function Q1601103Trigger_2:TriggerIn()
    print("Q1601103Trigger_2 - TriggerIn")
    actorMgr:GetActor("16011"):ShowTutorialDialog(2565, nil)
    this:DestroySelf()
end

function Q1601103Trigger_2:PreTriggerIn()
    print("Q1601103Trigger_2 - PreTriggerIn")
end

function Q1601103Trigger_2:LightUpTriggerIn()
    print("Q1601103Trigger_2 - LightUpTriggerIn")
end

function Q1601103Trigger_2:TriggerOut()
    print("Q1601103Trigger_2 - TriggerOut")
end

return Q1601103Trigger_2
