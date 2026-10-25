require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1204403Tigger = class("Q1204403Tigger", GadgetActorProxy)
Q1204403Tigger.defaultAlias = "Q1204403Tigger"
local Q12044ClientConfig = require("Quest/Client/Q12044ClientConfig")

local this
local subIDs = Q12044ClientConfig.SubIDs
local datas = Q12044ClientConfig.Datas
local npcs = Q12044ClientConfig.Npcs
local points = Q12044ClientConfig.Points

function Q1204403Tigger:OnPostDataPrepare()
    print("Q1204403Tigger - OnPostDataPrepare")
    this = self
end

function Q1204403Tigger:OnPostComponentPrepare()
    print("Q1204403Tigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 12044)
end

function Q1204403Tigger:TriggerIn()
    print("Q1204403Tigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1204403)
    this:DestroySelf()
end

function Q1204403Tigger:PreTriggerIn()
    print("Q1204403Tigger - PreTriggerIn")
end

function Q1204403Tigger:LightUpTriggerIn()
    print("Q1204403Tigger - LightUpTriggerIn")
end

function Q1204403Tigger:TriggerOut()
    print("Q1204403Tigger - TriggerOut")
end

return Q1204403Tigger
