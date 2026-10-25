require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011324Finish = class("Q4011324Finish", GadgetActorProxy)
Q4011324Finish.defaultAlias = "Q4011324Finish"
local Q40113ClientConfig = require("Quest/Client/Q40113ClientConfig")

local this
local subIDs = Q40113ClientConfig.SubIDs
local npcs = Q40113ClientConfig.Npcs
local points = Q40113ClientConfig.Points
local datas = Q40113ClientConfig.Datas

function Q4011324Finish:OnPostDataPrepare()
    print("[MainId: 40113][Trigger: Q4011324Finish] OnPostDataPrepare")
    this = self
end

function Q4011324Finish:OnPostComponentPrepare()
    print("[MainId: 40113][Trigger: Q4011324Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011324Finish:TriggerIn()
    print("[MainId: 40113][Trigger: Q4011324Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011324)
    this:DestroySelf()
end

function Q4011324Finish:PreTriggerIn()
    print("[MainId: 40113][Trigger: Q4011324Finish] PreTriggerIn")
end

function Q4011324Finish:LightUpTriggerIn()
    print("[MainId: 40113][Trigger: Q4011324Finish] LightUpTriggerIn")
end

function Q4011324Finish:TriggerOut()
    print("[MainId: 40113][Trigger: Q4011324Finish] TriggerOut")
end

return Q4011324Finish
