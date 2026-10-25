require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest489 = class("Quest489", QuestActorProxy)
Quest489.defaultAlias = "Quest489"
local Q489ClientConfig = require("Quest/Client/Q489ClientConfig")

local paimonData = Q489ClientConfig.PaimonData
local amborData = Q489ClientConfig.AmborData

function Quest489:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["48901"] = self.OnSubStart48901
    self.subStartHandlers["48902"] = self.OnSubStart48902
    self.subStartHandlers["48903"] = self.OnSubStart48903
    self.subStartHandlers["48904"] = self.OnSubStart48904
    self.subStartHandlers["48905"] = self.OnSubStart48905
    self.subStartHandlers["48906"] = self.OnSubStart48906
    self.subStartHandlers["48907"] = self.OnSubStart48907
    self.subStartHandlers["48908"] = self.OnSubStart48908
    self.subStartHandlers["48909"] = self.OnSubStart48909
    self.subStartHandlers["48910"] = self.OnSubStart48910
    self.subStartHandlers["48911"] = self.OnSubStart48911
    self.subStartHandlers["48912"] = self.OnSubStart48912
    self.subStartHandlers["48913"] = self.OnSubStart48913
end

function Quest489:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["48901"] = self.OnSubFinish48901
    self.subFinishHandlers["48902"] = self.OnSubFinish48902
    self.subFinishHandlers["48903"] = self.OnSubFinish48903
    self.subFinishHandlers["48904"] = self.OnSubFinish48904
    self.subFinishHandlers["48905"] = self.OnSubFinish48905
    self.subFinishHandlers["48906"] = self.OnSubFinish48906
    self.subFinishHandlers["48907"] = self.OnSubFinish48907
    self.subFinishHandlers["48908"] = self.OnSubFinish48908
    self.subFinishHandlers["48909"] = self.OnSubFinish48909
    self.subFinishHandlers["48910"] = self.OnSubFinish48910
    self.subFinishHandlers["48911"] = self.OnSubFinish48911
    self.subFinishHandlers["48912"] = self.OnSubFinish48912
    self.subFinishHandlers["48913"] = self.OnSubFinish48913
end

function Quest489:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest489:OnSubStart48901(arg1)
    print("paimon vanish")
    self:NotifyTo("Npc1463", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, amborData.ID)
    self:PaimonVanish()
end

function Quest489:OnSubFinish48901(arg1)
    print("48901 Finish : Story")
    self.ActionSafeCall(self, function()
        self:PaimonVanish()
        local actor = actorMgr:GetActor(amborData.Alias)
        local questNpcActor = self:GetQuestNpcActor(amborData.Alias)
        questNpcActor:EnableInteraction(false)
        self:NpcWalkToTask(questNpcActor, amborData.Pos2, function(arg1, arg2)
            arg1:ClearFollowTask()
            arg1:EnableInteraction(true)
            arg1:PerformDither(false, 1, arg1.HideSelf)
            self:DestroyQuestNpcActor(amborData.Alias)
        end, nil, nil, function(arg1)
            arg1:SyncPos(2)
        end)
    end)
end

function Quest489:DestroySelf(arg1)
    arg1:Destroy(false)
end

function Quest489:OnSubStart48902(arg1)
    self:NotifyTo("Npc1463", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest489:OnSubFinish48902(arg1)
    print("48902 Finish : Creat Paimon")
    self:PaimonVanish()
end

function Quest489:OnSubStart48903(arg1)
    self:NotifyTo("Npc1463", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest489:OnSubFinish48903(arg1)
    print("48903 Finish : Paimon Vanish")
    self:PaimonVanish()
end

function Quest489:OnSubStart48904(arg1)
    self:NotifyTo("Npc1463", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest489:OnSubFinish48904(arg1)
    self:NotifyTo("Npc1463", NpcUtil.NpcEventType.STARTDAILY, true)
    self:PaimonVanish()
end

function Quest489:OnSubStart48905(arg1) end

function Quest489:OnSubFinish48905(arg1)
    self:PaimonVanish()
end

function Quest489:OnSubStart48906(arg1) end

function Quest489:OnSubFinish48906(arg1)
    self:PaimonVanish()
end

function Quest489:OnSubStart48907(arg1) end

function Quest489:OnSubFinish48907(arg1)
    self:PaimonVanish()
end

function Quest489:OnSubStart48908(arg1) end

function Quest489:OnSubFinish48908(arg1)
    self:PaimonVanish()
end

function Quest489:OnSubStart48909(arg1) end

function Quest489:OnSubFinish48909(arg1)
    self:PaimonVanish()
end

function Quest489:OnSubFinish48910(arg1)
    self:PaimonVanish()
end

function Quest489:OnSubFinish48911(arg1)
    self:PaimonVanish()
end

function Quest489:Start() end
function Quest489:OnDestroy() end
return Quest489
