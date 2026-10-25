require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40195Trigger6 = class("Q40195Trigger6", GadgetActorProxy)
Q40195Trigger6.defaultAlias = "Q40195Trigger6"
local Q40195ClientConfig = require("Quest/Client/Q40195ClientConfig")

local this
local subIDs = Q40195ClientConfig.SubIDs
local datas = Q40195ClientConfig.Datas
local npcs = Q40195ClientConfig.Npcs
local points = Q40195ClientConfig.Points

function Q40195Trigger6:OnPostDataPrepare()
    print("Q40195Trigger6 - OnPostDataPrepare")
    this = self
end

function Q40195Trigger6:OnPostComponentPrepare()
    print("Q40195Trigger6 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 50, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40195)
end

function Q40195Trigger6:TriggerIn()
    print("Q40195Trigger6 - TriggerIn")
    local actor = actorMgr:GetActor("40195")
    actor.ShowBlackScreenWithDialogText(actor, 0.5, 0.5, 0.5, function(arg1)
        actor:EnableSpecialElementView(true, 40195, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
        actorMgr:GetActor("40195"):CreateQuestNpcById(4019505, npcs.Npc1088.id, 0, false, 0)
        actorMgr:GetActor("40195"):RequestInteraction(npcs.Npc1088.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40195Trigger6:PreTriggerIn()
    print("Q40195Trigger6 - PreTriggerIn")
end

function Q40195Trigger6:LightUpTriggerIn()
    print("Q40195Trigger6 - LightUpTriggerIn")
end

function Q40195Trigger6:TriggerOut()
    print("Q40195Trigger6 - TriggerOut")
end

return Q40195Trigger6
