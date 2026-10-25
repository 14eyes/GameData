require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8012Trigger1 = class("Q8012Trigger1", GadgetActorProxy)
Q8012Trigger1.defaultAlias = "Q8012Trigger1"
local Q8012ClientConfig = require("Quest/Client/Q8012ClientConfig")

local this
local subIDs = Q8012ClientConfig.SubIDs
local npcs = Q8012ClientConfig.Npcs
local datas = Q8012ClientConfig.Datas

function Q8012Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8012Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(18, 15, 15, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8012Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8012"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("8012")
        actor:CreateQuestNpcById(801203, npcs.Npc13072Data.id, 0)
        actor:RequestInteraction(npcs.Npc13072Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q8012Trigger1:PreTriggerIn()
    print("PreTriggerIn")
end

function Q8012Trigger1:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q8012Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q8012Trigger1
