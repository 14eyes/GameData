require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8012Trigger3 = class("Q8012Trigger3", GadgetActorProxy)
Q8012Trigger3.defaultAlias = "Q8012Trigger3"
local Q8012ClientConfig = require("Quest/Client/Q8012ClientConfig")

local this
local subIDs = Q8012ClientConfig.SubIDs
local npcs = Q8012ClientConfig.Npcs
local datas = Q8012ClientConfig.Datas

function Q8012Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8012Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8012Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8012"):CallDelay(2, function(arg1)
        actorMgr:GetActor("8012"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
            local actor = actorMgr:GetActor("8012")
            actor:CreateQuestNpcById(801209, npcs.Npc13078Data.id, 0)
            actor:RequestInteraction(npcs.Npc13078Data.alias)
        end, nil, nil, 0, false, true)
    end)

    this:DestroySelf()
end

function Q8012Trigger3:PreTriggerIn()
    print("PreTriggerIn")
end

function Q8012Trigger3:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q8012Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q8012Trigger3
