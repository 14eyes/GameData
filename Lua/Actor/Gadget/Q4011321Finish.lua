require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011321Finish = class("Q4011321Finish", GadgetActorProxy)
Q4011321Finish.defaultAlias = "Q4011321Finish"
local Q40113ClientConfig = require("Quest/Client/Q40113ClientConfig")

local this
local subIDs = Q40113ClientConfig.SubIDs
local npcs = Q40113ClientConfig.Npcs
local points = Q40113ClientConfig.Points
local datas = Q40113ClientConfig.Datas

function Q4011321Finish:OnPostDataPrepare()
    print("[MainId: 40113][Trigger: Q4011321Finish] OnPostDataPrepare")
    this = self
end

function Q4011321Finish:OnPostComponentPrepare()
    print("[MainId: 40113][Trigger: Q4011321Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011321Finish:TriggerIn()
    print("[MainId: 40113][Trigger: Q4011321Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011321)
    this:DestroySelf()
end

function Q4011321Finish:PreTriggerIn()
    print("[MainId: 40113][Trigger: Q4011321Finish] PreTriggerIn")
end

function Q4011321Finish:LightUpTriggerIn()
    print("[MainId: 40113][Trigger: Q4011321Finish] LightUpTriggerIn")
end

function Q4011321Finish:TriggerOut()
    print("[MainId: 40113][Trigger: Q4011321Finish] TriggerOut")
end

return Q4011321Finish
