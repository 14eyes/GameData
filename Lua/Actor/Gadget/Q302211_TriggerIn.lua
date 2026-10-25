require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302211_TriggerIn = class("Q302211_TriggerIn", GadgetActorProxy)
Q302211_TriggerIn.defaultAlias = "Q302211_TriggerIn"
local Q3022ClientConfig = require("Quest/Client/Q3022ClientConfig")

local subIDs = Q3022ClientConfig.SubIDs
local npcs = Q3022ClientConfig.Npcs
local datas = Q3022ClientConfig.Datas

function Q302211_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302211_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302211_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 302211)
    self:DestroySelf()
end

function Q302211_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q302211_TriggerIn
