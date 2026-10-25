require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011615Finish = class("Q4011615Finish", GadgetActorProxy)
Q4011615Finish.defaultAlias = "Q4011615Finish"
local Q40116ClientConfig = require("Quest/Client/Q40116ClientConfig")

local this
local subIDs = Q40116ClientConfig.SubIDs
local npcs = Q40116ClientConfig.Npcs
local points = Q40116ClientConfig.Points
local datas = Q40116ClientConfig.Datas

function Q4011615Finish:OnPostDataPrepare()
    print("[MainId: 40116][Trigger: Q4011615Finish] OnPostDataPrepare")
    this = self
end

function Q4011615Finish:OnPostComponentPrepare()
    print("[MainId: 40116][Trigger: Q4011615Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011615Finish:TriggerIn()
    print("[MainId: 40116][Trigger: Q4011615Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011615)
    actorUtils.FinishQuestID(true, 4011612)
    this:DestroySelf()
end

function Q4011615Finish:PreTriggerIn()
    print("[MainId: 40116][Trigger: Q4011615Finish] PreTriggerIn")
end

function Q4011615Finish:LightUpTriggerIn()
    print("[MainId: 40116][Trigger: Q4011615Finish] LightUpTriggerIn")
end

function Q4011615Finish:TriggerOut()
    print("[MainId: 40116][Trigger: Q4011615Finish] TriggerOut")
end

return Q4011615Finish
