require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011403Finish = class("Q4011403Finish", GadgetActorProxy)
Q4011403Finish.defaultAlias = "Q4011403Finish"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011403Finish:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011403Finish] OnPostDataPrepare")
    this = self
end

function Q4011403Finish:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011403Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011403Finish:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011403Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011403)
    this:DestroySelf()
end

function Q4011403Finish:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011403Finish] PreTriggerIn")
end

function Q4011403Finish:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011403Finish] LightUpTriggerIn")
end

function Q4011403Finish:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011403Finish] TriggerOut")
end

return Q4011403Finish
