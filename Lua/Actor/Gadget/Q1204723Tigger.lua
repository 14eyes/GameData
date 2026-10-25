require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1204723Tigger = class("Q1204723Tigger", GadgetActorProxy)
Q1204723Tigger.defaultAlias = "Q1204723Tigger"
local Q12047ClientConfig = require("Quest/Client/Q12047ClientConfig")

local this
local subIDs = Q12047ClientConfig.SubIDs
local datas = Q12047ClientConfig.Datas
local npcs = Q12047ClientConfig.Npcs
local points = Q12047ClientConfig.Points

function Q1204723Tigger:OnPostDataPrepare()
    print("Q1204723Tigger - OnPostDataPrepare")
    this = self
end

function Q1204723Tigger:OnPostComponentPrepare()
    print("Q1204723Tigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 12047)
end

function Q1204723Tigger:TriggerIn()
    print("Q1204723Tigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1204723)
    this:DestroySelf()
end

function Q1204723Tigger:PreTriggerIn()
    print("Q1204723Tigger - PreTriggerIn")
end

function Q1204723Tigger:LightUpTriggerIn()
    print("Q1204723Tigger - LightUpTriggerIn")
end

function Q1204723Tigger:TriggerOut()
    print("Q1204723Tigger - TriggerOut")
end

return Q1204723Tigger
