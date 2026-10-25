require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8012Trigger5 = class("Q8012Trigger5", GadgetActorProxy)
Q8012Trigger5.defaultAlias = "Q8012Trigger5"
local Q8012ClientConfig = require("Quest/Client/Q8012ClientConfig")

local this
local subIDs = Q8012ClientConfig.SubIDs
local npcs = Q8012ClientConfig.Npcs
local datas = Q8012ClientConfig.Datas

function Q8012Trigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8012Trigger5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8012Trigger5:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8012"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("8012")
        actor:CreateQuestNpcById(801212, npcs.Npc1022Data.id, 0)
        actor:RequestInteraction(npcs.Npc1022Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q8012Trigger5:PreTriggerIn()
    print("PreTriggerIn")
end

function Q8012Trigger5:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("8012"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q8012Trigger5:TriggerOut()
    print("TriggerOut")
end

return Q8012Trigger5
