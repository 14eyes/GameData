require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40168Tigger2 = class("Q40168Tigger2", GadgetActorProxy)
Q40168Tigger2.defaultAlias = "Q40168Tigger2"
local Q40168ClientConfig = require("Quest/Client/Q40168ClientConfig")

local this
local subIDs = Q40168ClientConfig.SubIDs
local datas = Q40168ClientConfig.Datas
local npcs = Q40168ClientConfig.Npcs
local points = Q40168ClientConfig.Points

function Q40168Tigger2:OnPostDataPrepare()
    print("Q40168Tigger2 - OnPostDataPrepare")
    this = self
end

function Q40168Tigger2:OnPostComponentPrepare()
    print("Q40168Tigger2 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40168)
end

function Q40168Tigger2:TriggerIn()
    print("Q40168Tigger2 - TriggerIn")
    actorUtils.FinishQuestID(false, 4016809)
    this:DestroySelf()
end

function Q40168Tigger2:PreTriggerIn()
    print("Q40168Tigger2 - PreTriggerIn")
end

function Q40168Tigger2:LightUpTriggerIn()
    print("Q40168Tigger2 - LightUpTriggerIn")
end

function Q40168Tigger2:TriggerOut()
    print("Q40168Tigger2 - TriggerOut")
end

return Q40168Tigger2
