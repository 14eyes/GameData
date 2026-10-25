require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40168Tigger6 = class("Q40168Tigger6", GadgetActorProxy)
Q40168Tigger6.defaultAlias = "Q40168Tigger6"
local Q40168ClientConfig = require("Quest/Client/Q40168ClientConfig")

local this
local subIDs = Q40168ClientConfig.SubIDs
local datas = Q40168ClientConfig.Datas
local npcs = Q40168ClientConfig.Npcs
local points = Q40168ClientConfig.Points

function Q40168Tigger6:OnPostDataPrepare()
    print("Q40168Tigger6 - OnPostDataPrepare")
    this = self
end

function Q40168Tigger6:OnPostComponentPrepare()
    print("Q40168Tigger6 - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40168)
end

function Q40168Tigger6:TriggerIn()
    print("Q40168Tigger6 - TriggerIn")
    actorUtils.FinishQuestID(false, 4016812)
    this:DestroySelf()
end

function Q40168Tigger6:PreTriggerIn()
    print("Q40168Tigger6 - PreTriggerIn")
end

function Q40168Tigger6:LightUpTriggerIn()
    print("Q40168Tigger6 - LightUpTriggerIn")
end

function Q40168Tigger6:TriggerOut()
    print("Q40168Tigger6 - TriggerOut")
end

return Q40168Tigger6
