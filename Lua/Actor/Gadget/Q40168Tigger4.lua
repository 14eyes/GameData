require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40168Tigger4 = class("Q40168Tigger4", GadgetActorProxy)
Q40168Tigger4.defaultAlias = "Q40168Tigger4"
local Q40168ClientConfig = require("Quest/Client/Q40168ClientConfig")

local this
local subIDs = Q40168ClientConfig.SubIDs
local datas = Q40168ClientConfig.Datas
local npcs = Q40168ClientConfig.Npcs
local points = Q40168ClientConfig.Points

function Q40168Tigger4:OnPostDataPrepare()
    print("Q40168Tigger4 - OnPostDataPrepare")
    this = self
end

function Q40168Tigger4:OnPostComponentPrepare()
    print("Q40168Tigger4 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(80, 80, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40168)
end

function Q40168Tigger4:TriggerIn()
    print("Q40168Tigger4 - TriggerIn")
    actorMgr:GetActor("40168"):ShowBlackScreenWithDialogText(0, 1, 0, function(arg1)
        actorUtils.FinishQuestID(true, 4016813)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q40168Tigger4:PreTriggerIn()
    print("Q40168Tigger4 - PreTriggerIn")
end

function Q40168Tigger4:LightUpTriggerIn()
    print("Q40168Tigger4 - LightUpTriggerIn")
end

function Q40168Tigger4:TriggerOut()
    print("Q40168Tigger4 - TriggerOut")
end

return Q40168Tigger4
