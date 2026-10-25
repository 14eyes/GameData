require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4021818_TriggerOut = class("Q4021818_TriggerOut", GadgetActorProxy)
Q4021818_TriggerOut.defaultAlias = "Q4021818_TriggerOut"
local Q40218ClientConfig = require("Quest/Client/Q40218ClientConfig")

local this
local subIDs = Q40218ClientConfig.SubIDs
local datas = Q40218ClientConfig.Datas
local npcs = Q40218ClientConfig.Npcs
local points = Q40218ClientConfig.Points

function Q4021818_TriggerOut:OnPostDataPrepare()
    print("Q4021818_TriggerOut - OnPostDataPrepare")
    this = self
end

function Q4021818_TriggerOut:OnPostComponentPrepare()
    print("Q4021818_TriggerOut - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40218)
end

function Q4021818_TriggerOut:TriggerIn()
    print("Q4021818_TriggerOut - TriggerIn")
end

function Q4021818_TriggerOut:PreTriggerIn()
    print("Q4021818_TriggerOut - PreTriggerIn")
end

function Q4021818_TriggerOut:LightUpTriggerIn()
    print("Q4021818_TriggerOut - LightUpTriggerIn")
end

function Q4021818_TriggerOut:TriggerOut()
    print("Q4021818_TriggerOut - TriggerOut")
    actorUtils.FinishQuestID(true, 4021818)
    this:DestroySelf()
end

return Q4021818_TriggerOut
