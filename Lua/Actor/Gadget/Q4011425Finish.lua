require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011425Finish = class("Q4011425Finish", GadgetActorProxy)
Q4011425Finish.defaultAlias = "Q4011425Finish"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011425Finish:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011425Finish] OnPostDataPrepare")
    this = self
end

function Q4011425Finish:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011425Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011425Finish:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011425Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011425)
    this:DestroySelf()
end

function Q4011425Finish:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011425Finish] PreTriggerIn")
end

function Q4011425Finish:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011425Finish] LightUpTriggerIn")
end

function Q4011425Finish:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011425Finish] TriggerOut")
end

return Q4011425Finish
