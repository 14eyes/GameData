require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40194Trigger1 = class("Q40194Trigger1", GadgetActorProxy)
Q40194Trigger1.defaultAlias = "Q40194Trigger1"
local Q40194ClientConfig = require("Quest/Client/Q40194ClientConfig")

local this
local subIDs = Q40194ClientConfig.SubIDs
local datas = Q40194ClientConfig.Datas
local npcs = Q40194ClientConfig.Npcs
local points = Q40194ClientConfig.Points

function Q40194Trigger1:OnPostDataPrepare()
    print("Q40194Trigger1 - OnPostDataPrepare")
    this = self
end

function Q40194Trigger1:OnPostComponentPrepare()
    print("Q40194Trigger1 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40194)
end

function Q40194Trigger1:TriggerIn()
    print("Q40194Trigger1 - TriggerIn")
    actorUtils.FinishQuestID(false, 4019401)
    this:DestroySelf()
end

function Q40194Trigger1:PreTriggerIn()
    print("Q40194Trigger1 - PreTriggerIn")
end

function Q40194Trigger1:LightUpTriggerIn()
    print("Q40194Trigger1 - LightUpTriggerIn")
end

function Q40194Trigger1:TriggerOut()
    print("Q40194Trigger1 - TriggerOut")
end

return Q40194Trigger1
