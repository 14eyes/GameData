require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q24001Trigger1 = class("Q24001Trigger1", GadgetActorProxy)
Q24001Trigger1.defaultAlias = "Q24001Trigger1"
local Q24001ClientConfig = require("Quest/Client/Q24001ClientConfig")

local this
local subIDs = Q24001ClientConfig.SubIDs
local datas = Q24001ClientConfig.Datas
local npcs = Q24001ClientConfig.Npcs
local points = Q24001ClientConfig.Points

function Q24001Trigger1:OnPostDataPrepare()
    print("Q24001Trigger1 - OnPostDataPrepare")
    this = self
end

function Q24001Trigger1:OnPostComponentPrepare()
    print("Q24001Trigger1 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 24001)
end

function Q24001Trigger1:TriggerIn()
    print("Q24001Trigger1 - TriggerIn")
    actorUtils.FinishQuestID(false, 2400102)
    this:DestroySelf()
end

function Q24001Trigger1:PreTriggerIn()
    print("Q24001Trigger1 - PreTriggerIn")
end

function Q24001Trigger1:LightUpTriggerIn()
    print("Q24001Trigger1 - LightUpTriggerIn")
end

function Q24001Trigger1:TriggerOut()
    print("Q24001Trigger1 - TriggerOut")
end

return Q24001Trigger1
