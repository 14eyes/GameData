require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011609Finish = class("Q4011609Finish", GadgetActorProxy)
Q4011609Finish.defaultAlias = "Q4011609Finish"
local Q40116ClientConfig = require("Quest/Client/Q40116ClientConfig")

local this
local subIDs = Q40116ClientConfig.SubIDs
local npcs = Q40116ClientConfig.Npcs
local points = Q40116ClientConfig.Points
local datas = Q40116ClientConfig.Datas

function Q4011609Finish:OnPostDataPrepare()
    print("[MainId: 40116][Trigger: Q4011609Finish] OnPostDataPrepare")
    this = self
end

function Q4011609Finish:OnPostComponentPrepare()
    print("[MainId: 40116][Trigger: Q4011609Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011609Finish:TriggerIn()
    print("[MainId: 40116][Trigger: Q4011609Finish] TriggerIn")
end

function Q4011609Finish:PreTriggerIn()
    print("[MainId: 40116][Trigger: Q4011609Finish] PreTriggerIn")
end

function Q4011609Finish:LightUpTriggerIn()
    print("[MainId: 40116][Trigger: Q4011609Finish] LightUpTriggerIn")
end

function Q4011609Finish:TriggerOut()
    print("[MainId: 40116][Trigger: Q4011609Finish] TriggerOut")
end

return Q4011609Finish
