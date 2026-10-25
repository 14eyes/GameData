require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011406Finish = class("Q4011406Finish", GadgetActorProxy)
Q4011406Finish.defaultAlias = "Q4011406Finish"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011406Finish:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011406Finish] OnPostDataPrepare")
    this = self
end

function Q4011406Finish:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011406Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011406Finish:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011406Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011406)
    this:DestroySelf()
end

function Q4011406Finish:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011406Finish] PreTriggerIn")
end

function Q4011406Finish:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011406Finish] LightUpTriggerIn")
end

function Q4011406Finish:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011406Finish] TriggerOut")
end

return Q4011406Finish
