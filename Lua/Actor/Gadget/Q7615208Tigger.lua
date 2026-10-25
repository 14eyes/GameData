require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615208Tigger = class("Q7615208Tigger", GadgetActorProxy)
Q7615208Tigger.defaultAlias = "Q7615208Tigger"
local Q76152ClientConfig = require("Quest/Client/Q76152ClientConfig")

local this
local subIDs = Q76152ClientConfig.SubIDs
local datas = Q76152ClientConfig.Datas
local npcs = Q76152ClientConfig.Npcs
local points = Q76152ClientConfig.Points

function Q7615208Tigger:OnPostDataPrepare()
    print("Q7615208Tigger - OnPostDataPrepare")
    this = self
end

function Q7615208Tigger:OnPostComponentPrepare()
    print("Q7615208Tigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76152)
end

function Q7615208Tigger:TriggerIn()
    print("Q7615208Tigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7615208)
    this:DestroySelf()
end

function Q7615208Tigger:PreTriggerIn()
    print("Q7615208Tigger - PreTriggerIn")
end

function Q7615208Tigger:LightUpTriggerIn()
    print("Q7615208Tigger - LightUpTriggerIn")
end

function Q7615208Tigger:TriggerOut()
    print("Q7615208Tigger - TriggerOut")
end

return Q7615208Tigger
