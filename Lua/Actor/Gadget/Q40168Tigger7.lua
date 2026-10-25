require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40168Tigger7 = class("Q40168Tigger7", GadgetActorProxy)
Q40168Tigger7.defaultAlias = "Q40168Tigger7"
local Q40168ClientConfig = require("Quest/Client/Q40168ClientConfig")

local this
local subIDs = Q40168ClientConfig.SubIDs
local datas = Q40168ClientConfig.Datas
local npcs = Q40168ClientConfig.Npcs
local points = Q40168ClientConfig.Points

function Q40168Tigger7:OnPostDataPrepare()
    print("Q40168Tigger7 - OnPostDataPrepare")
    this = self
end

function Q40168Tigger7:OnPostComponentPrepare()
    print("Q40168Tigger7 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(75, 55, 45, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40168)
end

function Q40168Tigger7:TriggerIn()
    print("Q40168Tigger7 - TriggerIn")
end

function Q40168Tigger7:PreTriggerIn()
    print("Q40168Tigger7 - PreTriggerIn")
end

function Q40168Tigger7:LightUpTriggerIn()
    print("Q40168Tigger7 - LightUpTriggerIn")
end

function Q40168Tigger7:TriggerOut()
    print("Q40168Tigger7 - TriggerOut")
    actorUtils.FinishQuestID(true, 4016813)
    this:DestroySelf()
end

return Q40168Tigger7
