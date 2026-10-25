require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7521003Tigger = class("Q7521003Tigger", GadgetActorProxy)
Q7521003Tigger.defaultAlias = "Q7521003Tigger"
local Q75210ClientConfig = require("Quest/Client/Q75210ClientConfig")

local this
local subIDs = Q75210ClientConfig.SubIDs
local datas = Q75210ClientConfig.Datas
local npcs = Q75210ClientConfig.Npcs
local points = Q75210ClientConfig.Points

function Q7521003Tigger:OnPostDataPrepare()
    print("Q7521003Tigger - OnPostDataPrepare")
    this = self
end

function Q7521003Tigger:OnPostComponentPrepare()
    print("Q7521003Tigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75210)
end

function Q7521003Tigger:TriggerIn()
    print("Q7521003Tigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7521003)
    this:DestroySelf()
end

function Q7521003Tigger:PreTriggerIn()
    print("Q7521003Tigger - PreTriggerIn")
end

function Q7521003Tigger:LightUpTriggerIn()
    print("Q7521003Tigger - LightUpTriggerIn")
end

function Q7521003Tigger:TriggerOut()
    print("Q7521003Tigger - TriggerOut")
end

return Q7521003Tigger
