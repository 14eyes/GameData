require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest353 = class("Quest353", QuestActorProxy)
Quest353.defaultAlias = "Quest353"

function Quest353:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["35301"] = self.OnSubStart35301
    self.subStartHandlers["35302"] = self.OnSubStart35302
    self.subStartHandlers["35303"] = self.OnSubStart35303
    self.subStartHandlers["35304"] = self.OnSubStart35304
    self.subStartHandlers["35309"] = self.OnSubStart35309
    self.subStartHandlers["35310"] = self.OnSubStart35310
    self.subStartHandlers["35311"] = self.OnSubStart35311
    self.subStartHandlers["35312"] = self.OnSubStart35312
end

function Quest353:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["35301"] = self.OnSubFinish35301
    self.subFinishHandlers["35302"] = self.OnSubFinish35302
    self.subFinishHandlers["35303"] = self.OnSubFinish35303
    self.subFinishHandlers["35304"] = self.OnSubFinish35304
    self.subFinishHandlers["35309"] = self.OnSubFinish35309
    self.subFinishHandlers["35310"] = self.OnSubFinish35310
    self.subFinishHandlers["35311"] = self.OnSubFinish35311
    self.subFinishHandlers["35312"] = self.OnSubFinish35312
end

function Quest353:ShowTutorial(arg1) end
local actor
local pos

function Quest353:ShowGoddess()
    if actor ~= nil then
        actor:SetPos(pos)
        actor = nil
    end
end

function Quest353:HideGoddess()
    actor = actorMgr:GetActor("Goddess_3003")
    if actor ~= nil then
        if actor ~= actorMgr.dummyActor then
            goto lbl_20
        end
    end

    actor = nil
    print("can not find Goddess_3003")
    goto lbl_34
    ::lbl_20::
    pos = actor:GetPos()
    actor:SetPos(M.Pos(pos.x, pos.y + 100, pos.z))
    ::lbl_34::
end

function Quest353:On35309CutsceneFinish()
    local paimonData = self.clientData.PaimonData
    self:CreateQuestNPCById(35309, paimonData.PaimonID)
    self:RequestInteraction(self.clientData.PaimonData.Paimon)
    self:ShowGoddess()
    print("Finish quest to unlock Goddess")
    local actor = actorMgr:GetActor(self.clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:SetVisible(true)
    end

    local effData = self.clientData.EffData
    self:SpawnGadgetById(35301, effData.EffID, 1)
end

function Quest353:On35309CutsceneDestroy()
    print("On35309CutsceneDestroy")
    self:ShowGoddess()
end

function Quest353:On35309CutsceneStart()
    self:HideGoddess()
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:SetVisible(false)
    end
end

function Quest353:PlayerName()
    self.GetQuestNpcActor(self, self.clientData.PaimonData.Paimon):VanishKeep()
    self.ShowNameDialog(self, function()
        print("Finish Name Task")
        local actor = actorMgr:GetActor(self.clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end)
end

function Quest353:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    questNpcActor:CallDelay(1, questNpcActor.VanishKeep)
end

function Quest353:Cutscene35309()
    self:PlayCutscene(self.clientData.InterData.Cutscene1, self.On35309CutsceneFinish, self.On35309CutsceneStart, self.On35309CutsceneDestroy)
end

function Quest353:OnSubStart35301(arg1)
    print("35301 start: Paimon Create")
    local paimonData = self.clientData.PaimonData
    self:CreateQuestNpc(arg1, paimonData.PaimonID)
    globalActor:PlayerBackButtonOn(2, 3, "Q353Center", 30, 9)
    self:CallDelay(1, self.Actionsafe)
end

function Quest353:Actionsafe()
    self:ActionSafeCall(self.InteractPaimon)
end

function Quest353:InteractPaimon()
    self:RequestInteraction(self.clientData.PaimonData.Paimon)
end

function Quest353:OnSubFinish35301(arg1)
    print("35301 Finish: Tutorial")
    self:ActionSafeCall(self.ShowTutorial)
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest353:OnSubStart35302(arg1)
    print("35302 start: Create questarea")
    self:CallDelay(1, self.Skill)
    globalActor:PlayerBackButtonOff(2)
end

function Quest353:Skill(arg1)
    print("Skill")
    self:ActionSafeCall(self.SkillTurorial)
end

function Quest353:SkillTurorial(arg1)
    print("SkillTurorial")
    local Q353ClientConfig = require("Quest/Client/Q353ClientConfig")
    local actor = actorMgr:GetActor(Q353ClientConfig.ActorAlias)
    self:TransmitPlayerByQuestId(35302, 1)
    globalActor:StartGuide("GuideElementSkill")
end

function Quest353:OnSubStart35303(arg1)
    print("35303 start: Paimon to Act2")
    self:CallDelay(1, function()
        globalActor:EndGuide("GuideElementSkill")
        globalActor:EndGuide("GuideElementSkillPC")
        globalActor:EndGuide("GuideElementSkillPS")
        globalActor:StartGuide("GuideElementSkillHold")
    end)
end

function Quest353:OnSubStart35304(arg1)
    print("35304 start: Paimon to Act3")
    self:CallDelay(1, function()
        globalActor:EndGuide("GuideElementSkillHold")
        globalActor:EndGuide("GuideElementSkillHoldPC")
        globalActor:EndGuide("GuideElementSkillHoldPS")
        globalActor:StartGuide("GuideElementSkillBurst")
    end)
end

function Quest353:OnSubFinish35304(arg1)
    print("35304 Finish: Endguide")
    globalActor:EndGuide("GuideElementSkillBurst")
    globalActor:EndGuide("GuideElementSkillBurstPC")
    globalActor:EndGuide("GuideElementSkillBurstPS")
end

function Quest353:OnSubStart35312(arg1)
    print("35312 start: Questarea")
    actorMgr:CreateActorWithPos("Q353Trigger1", "Actor/Gadget/Q353Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q353Center").pos, sceneData:GetDummyPoint(3, "Q353Center").rot, true, false)
    actorMgr:CreateActorWithPos("Q353Trigger2", "Actor/Gadget/Q353Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q353Center").pos, sceneData:GetDummyPoint(3, "Q353Center").rot, true, false)
end

function Quest353:OnSubFinish35312(arg1)
    print("35312 Finish: Questarea Des")
    globalActor:UnSpawn("Q353Trigger1")
    globalActor:UnSpawn("Q353Trigger2")
    actorMgr:GetActor("Q353Trigger1"):DestroySelf()
    actorMgr:GetActor("Q353Trigger2"):DestroySelf()
end

function Quest353:OnSubFinish35311(arg1)
    print("35311 Finish: Story5")
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story5, self.OnNarratorFinish, "Tag")
    globalActor:EndGuide("GuideElementSkillBurst")
    globalActor:EndGuide("GuideElementSkillBurstPC")
    globalActor:EndGuide("GuideElementSkillBurstPS")
end

function Quest353:OnNarratorFinish()
    globalActor:StartGuide("GuideViewHotkey")
end

function Quest353:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Now Spawn Tears")
    elseif arg1 == 2 then
        print("Show Name Dialog")
        self:PlayerName()
    end
end

function Quest353:Start() end
function Quest353:OnDestroy() end
return Quest353
