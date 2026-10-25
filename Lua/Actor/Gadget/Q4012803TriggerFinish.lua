require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4012803TriggerFinish = class("Q4012803TriggerFinish", GadgetActorProxy)
Q4012803TriggerFinish.defaultAlias = "Q4012803TriggerFinish"
local Q40128ClientConfig = require("Quest/Client/Q40128ClientConfig")

local this
local subIDs = Q40128ClientConfig.SubIDs
local npcs = Q40128ClientConfig.Npcs
local points = Q40128ClientConfig.Points
local datas = Q40128ClientConfig.Datas

function Q4012803TriggerFinish:OnPostDataPrepare()
    print("[MainId: 40128][Trigger: Q4012803TriggerFinish] OnPostDataPrepare")
    this = self
end

function Q4012803TriggerFinish:OnPostComponentPrepare()
    print("[MainId: 40128][Trigger: Q4012803TriggerFinish] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(60, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4012803TriggerFinish:TriggerIn()
    print("[MainId: 40128][Trigger: Q4012803TriggerFinish] TriggerIn")
    actorUtils.FinishQuestID(false, 4012803)
    this:DestroySelf()
end

function Q4012803TriggerFinish:PreTriggerIn()
    print("[MainId: 40128][Trigger: Q4012803TriggerFinish] PreTriggerIn")
end

function Q4012803TriggerFinish:LightUpTriggerIn()
    print("[MainId: 40128][Trigger: Q4012803TriggerFinish] LightUpTriggerIn")
end

function Q4012803TriggerFinish:TriggerOut()
    print("[MainId: 40128][Trigger: Q4012803TriggerFinish] TriggerOut")
end

return Q4012803TriggerFinish
