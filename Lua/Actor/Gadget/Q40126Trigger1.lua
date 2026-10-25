require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40126Trigger1 = class("Q40126Trigger1", GadgetActorProxy)
Q40126Trigger1.defaultAlias = "Q40126Trigger1"
local Q40126ClientConfig = require("Quest/Client/Q40126ClientConfig")

local this
local subIDs = Q40126ClientConfig.SubIDs
local npcs = Q40126ClientConfig.Npcs
local points = Q40126ClientConfig.Points
local datas = Q40126ClientConfig.Datas

function Q40126Trigger1:OnPostDataPrepare()
    print("[MainId: 40126][Trigger: Q40126Trigger1] OnPostDataPrepare")
    this = self
end

function Q40126Trigger1:OnPostComponentPrepare()
    print("[MainId: 40126][Trigger: Q40126Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40126Trigger1:TriggerIn()
    print("[MainId: 40126][Trigger: Q40126Trigger1] TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 4012605)
end

function Q40126Trigger1:PreTriggerIn()
    print("[MainId: 40126][Trigger: Q40126Trigger1] PreTriggerIn")
end

function Q40126Trigger1:LightUpTriggerIn()
    print("[MainId: 40126][Trigger: Q40126Trigger1] LightUpTriggerIn")
end

function Q40126Trigger1:TriggerOut()
    print("[MainId: 40126][Trigger: Q40126Trigger1] TriggerOut")
end

return Q40126Trigger1
