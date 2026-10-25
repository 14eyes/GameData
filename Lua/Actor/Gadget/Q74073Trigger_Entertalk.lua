require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74073Trigger_Entertalk = class("Q74073Trigger_Entertalk", GadgetActorProxy)
Q74073Trigger_Entertalk.defaultAlias = "Q74073Trigger_Entertalk"
local Q74073ClientConfig = require("Quest/Client/Q74073ClientConfig")

local this
local subIDs = Q74073ClientConfig.SubIDs
local npcs = Q74073ClientConfig.Npcs
local datas = Q74073ClientConfig.Datas

function Q74073Trigger_Entertalk:OnPostDataPrepare()
    print("[MainId: 74073][Trigger: Q74073Trigger_Entertalk] OnPostDataPrepare")
    this = self
end

function Q74073Trigger_Entertalk:OnPostComponentPrepare()
    print("[MainId: 74073][Trigger: Q74073Trigger_Entertalk] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 5, 25, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74073Trigger_Entertalk:TriggerIn()
    print("[MainId: 74073][Trigger: Q74073Trigger_Entertalk] TriggerIn")
    actorUtils.FinishQuestID(false, 7407301)
    actorUtils.FinishQuestID(false, 7407302)
    this:DestroySelf()
end

function Q74073Trigger_Entertalk:PreTriggerIn()
    print("[MainId: 74073][Trigger: Q74073Trigger_Entertalk] PreTriggerIn")
end

function Q74073Trigger_Entertalk:LightUpTriggerIn()
    print("[MainId: 74073][Trigger: Q74073Trigger_Entertalk] LightUpTriggerIn")
end

function Q74073Trigger_Entertalk:TriggerOut()
    print("[MainId: 74073][Trigger: Q74073Trigger_Entertalk] TriggerOut")
end

return Q74073Trigger_Entertalk
