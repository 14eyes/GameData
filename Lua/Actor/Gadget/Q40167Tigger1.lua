require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40167Tigger1 = class("Q40167Tigger1", GadgetActorProxy)
Q40167Tigger1.defaultAlias = "Q40167Tigger1"
local Q40167ClientConfig = require("Quest/Client/Q40167ClientConfig")

local this
local subIDs = Q40167ClientConfig.SubIDs
local datas = Q40167ClientConfig.Datas
local npcs = Q40167ClientConfig.Npcs
local points = Q40167ClientConfig.Points

function Q40167Tigger1:OnPostDataPrepare()
    print("Q40167Tigger1 - OnPostDataPrepare")
    this = self
end

function Q40167Tigger1:OnPostComponentPrepare()
    print("Q40167Tigger1 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40167)
end

function Q40167Tigger1:TriggerIn()
    print("Q40167Tigger1 - TriggerIn")
    actorUtils.FinishQuestID(false, 4016704)
    this:DestroySelf()
end

function Q40167Tigger1:PreTriggerIn()
    print("Q40167Tigger1 - PreTriggerIn")
end

function Q40167Tigger1:LightUpTriggerIn()
    print("Q40167Tigger1 - LightUpTriggerIn")
end

function Q40167Tigger1:TriggerOut()
    print("Q40167Tigger1 - TriggerOut")
end

return Q40167Tigger1
