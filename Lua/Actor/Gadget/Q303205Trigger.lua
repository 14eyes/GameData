require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303205Trigger = class("Q303205Trigger", GadgetActorProxy)
Q303205Trigger.defaultAlias = "Q303205Trigger"
local Q3032ClientConfig = require("Quest/Client/Q3032ClientConfig")

local this
local subIDs = Q3032ClientConfig.SubIDs
local npcs = Q3032ClientConfig.Npcs
local datas = Q3032ClientConfig.Datas

function Q303205Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303205Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303205Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3032"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("3032")
        actor:CreateQuestNpcById(303205, npcs.PaimonData.id, 2)
        actor:RequestInteraction(npcs.PaimonData.alias)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q303205Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303205Trigger
