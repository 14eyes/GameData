require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73186 = class("Quest73186", QuestActorProxy)
Quest73186.defaultAlias = "Quest73186"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73186:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73186:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7318601"] = self.OnSubStart7318601,
        ["7318632"] = self.OnSubStart7318632,
        ["7318633"] = self.OnSubStart7318633,
        ["7318602"] = self.OnSubStart7318602,
        ["7318603"] = self.OnSubStart7318603,
        ["7318604"] = self.OnSubStart7318604,
        ["7318605"] = self.OnSubStart7318605,
        ["7318606"] = self.OnSubStart7318606,
        ["7318640"] = self.OnSubStart7318640,
        ["7318607"] = self.OnSubStart7318607,
        ["7318608"] = self.OnSubStart7318608,
        ["7318609"] = self.OnSubStart7318609,
        ["7318610"] = self.OnSubStart7318610,
        ["7318611"] = self.OnSubStart7318611,
        ["7318639"] = self.OnSubStart7318639,
        ["7318612"] = self.OnSubStart7318612,
        ["7318634"] = self.OnSubStart7318634,
        ["7318613"] = self.OnSubStart7318613,
        ["7318614"] = self.OnSubStart7318614,
        ["7318629"] = self.OnSubStart7318629,
        ["7318630"] = self.OnSubStart7318630,
        ["7318635"] = self.OnSubStart7318635,
        ["7318642"] = self.OnSubStart7318642,
        ["7318631"] = self.OnSubStart7318631,
        ["7318615"] = self.OnSubStart7318615,
        ["7318616"] = self.OnSubStart7318616,
        ["7318617"] = self.OnSubStart7318617,
        ["7318641"] = self.OnSubStart7318641,
        ["7318643"] = self.OnSubStart7318643,
        ["7318618"] = self.OnSubStart7318618,
        ["7318619"] = self.OnSubStart7318619,
        ["7318620"] = self.OnSubStart7318620,
        ["7318622"] = self.OnSubStart7318622,
        ["7318623"] = self.OnSubStart7318623,
        ["7318624"] = self.OnSubStart7318624,
        ["7318625"] = self.OnSubStart7318625,
        ["7318626"] = self.OnSubStart7318626,
        ["7318627"] = self.OnSubStart7318627,
        ["7318628"] = self.OnSubStart7318628,
        ["7318621"] = self.OnSubStart7318621,
        ["7318637"] = self.OnSubStart7318637,
        ["7318638"] = self.OnSubStart7318638,
        ["7318636"] = self.OnSubStart7318636
    }
end

function Quest73186:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7318601"] = self.OnSubFinish7318601,
        ["7318632"] = self.OnSubFinish7318632,
        ["7318633"] = self.OnSubFinish7318633,
        ["7318602"] = self.OnSubFinish7318602,
        ["7318603"] = self.OnSubFinish7318603,
        ["7318604"] = self.OnSubFinish7318604,
        ["7318605"] = self.OnSubFinish7318605,
        ["7318606"] = self.OnSubFinish7318606,
        ["7318640"] = self.OnSubFinish7318640,
        ["7318607"] = self.OnSubFinish7318607,
        ["7318608"] = self.OnSubFinish7318608,
        ["7318609"] = self.OnSubFinish7318609,
        ["7318610"] = self.OnSubFinish7318610,
        ["7318611"] = self.OnSubFinish7318611,
        ["7318639"] = self.OnSubFinish7318639,
        ["7318612"] = self.OnSubFinish7318612,
        ["7318634"] = self.OnSubFinish7318634,
        ["7318613"] = self.OnSubFinish7318613,
        ["7318614"] = self.OnSubFinish7318614,
        ["7318629"] = self.OnSubFinish7318629,
        ["7318630"] = self.OnSubFinish7318630,
        ["7318635"] = self.OnSubFinish7318635,
        ["7318642"] = self.OnSubFinish7318642,
        ["7318631"] = self.OnSubFinish7318631,
        ["7318615"] = self.OnSubFinish7318615,
        ["7318616"] = self.OnSubFinish7318616,
        ["7318617"] = self.OnSubFinish7318617,
        ["7318641"] = self.OnSubFinish7318641,
        ["7318643"] = self.OnSubFinish7318643,
        ["7318618"] = self.OnSubFinish7318618,
        ["7318619"] = self.OnSubFinish7318619,
        ["7318620"] = self.OnSubFinish7318620,
        ["7318622"] = self.OnSubFinish7318622,
        ["7318623"] = self.OnSubFinish7318623,
        ["7318624"] = self.OnSubFinish7318624,
        ["7318625"] = self.OnSubFinish7318625,
        ["7318626"] = self.OnSubFinish7318626,
        ["7318627"] = self.OnSubFinish7318627,
        ["7318628"] = self.OnSubFinish7318628,
        ["7318621"] = self.OnSubFinish7318621,
        ["7318637"] = self.OnSubFinish7318637,
        ["7318638"] = self.OnSubFinish7318638,
        ["7318636"] = self.OnSubFinish7318636
    }
end

function Quest73186:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73186:Start()
    print("Start")
end

function Quest73186:OnDestroy()
    print("OnDestroy")
end

function Quest73186:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73186:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73186:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73186:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73186:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73186:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73186:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73186:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:TransmitPlayerWithTextByQuestId(7318628, 1, datas.TextmapId_Trans_1, 5)
    end
end

function Quest73186:OnSubStart7318601(arg1)
    print("OnSubStart7318601")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 2)
    end)
end

function Quest73186:OnSubFinish7318601(arg1)
    print("OnSubFinish7318601")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20845Data.alias)
end

function Quest73186:OnSubStart7318632(arg1)
    print("OnSubStart7318632")
end

function Quest73186:OnSubFinish7318632(arg1)
    print("OnSubFinish7318632")
end

function Quest73186:OnSubStart7318633(arg1)
    print("OnSubStart7318633")
    actorMgr:CreateActorWithPos("Q7318633EnterTrigger", "Actor/Gadget/Q7318633EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318633_guide").pos, sceneData:GetDummyPoint(3, "Q7318633_guide").rot, true, false, 3)
end

function Quest73186:OnSubFinish7318633(arg1)
    print("OnSubFinish7318633")
end

function Quest73186:OnSubStart7318602(arg1)
    print("OnSubStart7318602")
    actorMgr:CreateActorWithPos("Q7318602EnterTrigger", "Actor/Gadget/Q7318602EnterTrigger", 70900002, 0, {x = -991.774, y = 12.914, z = 4761.895}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73186:OnSubFinish7318602(arg1)
    print("OnSubFinish7318602")
end

function Quest73186:OnSubStart7318603(arg1)
    print("OnSubStart7318603")
    this:PlayCutsceneIndex(7318603, function(arg1)
        actorUtils.FinishQuestID(false, 7318603)
    end, nil, nil, false)
end

function Quest73186:OnSubFinish7318603(arg1)
    print("OnSubFinish7318603")
end

function Quest73186:OnSubStart7318604(arg1)
    print("OnSubStart7318604")
end

function Quest73186:OnSubFinish7318604(arg1)
    print("OnSubFinish7318604")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73186:OnSubStart7318605(arg1)
    print("OnSubStart7318605")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 2)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc4296Data.alias)
        end)
    end)
end

function Quest73186:OnSubFinish7318605(arg1)
    print("OnSubFinish7318605")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20845Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
    this:CallDelay(4, function(arg1)
        this:NarratorOnlyTaskByData(datas.Rmd_7318605)
    end)
end

function Quest73186:OnSubStart7318606(arg1)
    print("OnSubStart7318606")
    actorMgr:CreateActorWithPos("Q7318606EnterTrigger", "Actor/Gadget/Q7318606EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318606_guide").pos, sceneData:GetDummyPoint(3, "Q7318606_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7318606_RmdTrigger", "Actor/Gadget/Q7318606_RmdTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318606_Rmd").pos, sceneData:GetDummyPoint(3, "Q7318606_Rmd").rot, true, false, 3)
end

function Quest73186:OnSubFinish7318606(arg1)
    print("OnSubFinish7318606")
    this:ActorDestroy("Q7318606_RmdTrigger")
end

function Quest73186:OnSubStart7318640(arg1)
    print("OnSubStart7318640")
    actorMgr:CreateActorWithPos("Q7318640EnterTrigger", "Actor/Gadget/Q7318640EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "T7318607_N20723").pos, sceneData:GetDummyPoint(3, "T7318607_N20723").rot, true, false, 3)
end

function Quest73186:OnSubFinish7318640(arg1)
    print("OnSubFinish7318640")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73186:OnSubStart7318607(arg1)
    print("OnSubStart7318607")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc4296Data.alias)
        end)
    end)
end

function Quest73186:OnSubFinish7318607(arg1)
    print("OnSubFinish7318607")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
end

function Quest73186:OnSubStart7318608(arg1)
    print("OnSubStart7318608")
    actorMgr:CreateActorWithPos("Q7318608EnterTrigger", "Actor/Gadget/Q7318608EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318608_guide").pos, sceneData:GetDummyPoint(3, "Q7318608_guide").rot, true, false, 3)
end

function Quest73186:OnSubFinish7318608(arg1)
    print("OnSubFinish7318608")
end

function Quest73186:OnSubStart7318609(arg1)
    print("OnSubStart7318609")
end

function Quest73186:OnSubFinish7318609(arg1)
    print("OnSubFinish7318609")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73186:OnSubStart7318610(arg1)
    print("OnSubStart7318610")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc20846Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc20846Data.alias)
        end)
    end)
end

function Quest73186:OnSubFinish7318610(arg1)
    print("OnSubFinish7318610")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20846Data.alias)
end

function Quest73186:OnSubStart7318611(arg1)
    print("OnSubStart7318611")
end

function Quest73186:OnSubFinish7318611(arg1)
    print("OnSubFinish7318611")
end

function Quest73186:OnSubStart7318639(arg1)
    print("OnSubStart7318639")
    this:PlayCutsceneIndex(7318639, function(arg1)
        this:CallDelay(2, function(arg1)
            this:NarratorOnlyTaskByData(datas.Rmd_7318639, function(arg1)
                actorUtils.FinishQuestID(false, 7318639)
            end)
        end)
    end, nil, nil, false)
end

function Quest73186:OnSubFinish7318639(arg1)
    print("OnSubFinish7318639")
end

function Quest73186:OnSubStart7318612(arg1)
    print("OnSubStart7318612")
    actorMgr:CreateActorWithPos("Q7318612EnterTrigger", "Actor/Gadget/Q7318612EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318612_guide").pos, sceneData:GetDummyPoint(3, "Q7318612_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7318612_RmdTrigger", "Actor/Gadget/Q7318612_RmdTrigger", 70900002, 0, {x = -882.878, y = -29.886, z = 5045.417}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73186:OnSubFinish7318612(arg1)
    print("OnSubFinish7318612")
    this:ActorDestroy("Q7318612_RmdTrigger")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73186:OnSubStart7318634(arg1)
    print("OnSubStart7318634")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc4296Data.alias)
        end)
    end)
end

function Quest73186:OnSubFinish7318634(arg1)
    print("OnSubFinish7318634")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.Rmd_7318634)
    end)
end

function Quest73186:OnSubStart7318613(arg1)
    print("OnSubStart7318613")
end

function Quest73186:OnSubFinish7318613(arg1)
    print("OnSubFinish7318613")
    this:CallDelay(3, function(arg1)
        this:NarratorOnlyTaskByData(datas.Rmd_7318613, nil, 73186)
    end)
end

function Quest73186:OnSubStart7318614(arg1)
    print("OnSubStart7318614")
    actorMgr:CreateActorWithPos("Q7318614EnterTrigger", "Actor/Gadget/Q7318614EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318614_guide").pos, sceneData:GetDummyPoint(3, "Q7318614_guide").rot, true, false, 3)
end

function Quest73186:OnSubFinish7318614(arg1)
    print("OnSubFinish7318614")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73186:OnSubStart7318629(arg1)
    print("OnSubStart7318629")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc4296Data.alias)
        end)
    end)
end

function Quest73186:OnSubFinish7318629(arg1)
    print("OnSubFinish7318629")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
end

function Quest73186:OnSubStart7318630(arg1)
    print("OnSubStart7318630")
end

function Quest73186:OnSubFinish7318630(arg1)
    print("OnSubFinish7318630")
end

function Quest73186:OnSubStart7318635(arg1)
    print("OnSubStart7318635")
    this:PlayCutsceneIndex(133314014, function(arg1)
        actorUtils.FinishQuestID(false, 7318635)
    end, nil, nil, false)
end

function Quest73186:OnSubFinish7318635(arg1)
    print("OnSubFinish7318635")
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.Rmd_7318635)
    end)
end

function Quest73186:OnSubStart7318642(arg1)
    print("OnSubStart7318642")
    actorMgr:CreateActorWithPos("Q7318642EnterTrigger", "Actor/Gadget/Q7318642EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318642_guide").pos, sceneData:GetDummyPoint(3, "Q7318642_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7318642_RmdTrigger", "Actor/Gadget/Q7318642_RmdTrigger", 70900002, 0, {x = -802.058, y = -131.371, z = 4938.884}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73186:OnSubFinish7318642(arg1)
    print("OnSubFinish7318642")
    this:ActorDestroy("Q7318642_RmdTrigger")
end

function Quest73186:OnSubStart7318631(arg1)
    print("OnSubStart7318631")
    actorMgr:CreateActorWithPos("Q7318631EnterTrigger", "Actor/Gadget/Q7318631EnterTrigger", 70900002, 0, {x = -944.198, y = -143.409, z = 4890.983}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7318631_DoorRmd", "Actor/Gadget/Q7318631_DoorRmd", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318631_DoorRmd").pos, sceneData:GetDummyPoint(3, "Q7318631_DoorRmd").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7318631_MissionTrigger", "Actor/Gadget/Q7318631_MissionTrigger", 70900002, 0, {x = -935.063, y = -129.04, z = 4913.223}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73186:OnSubFinish7318631(arg1)
    print("OnSubFinish7318631")
    this:ActorDestroy("Q7318631_DoorRmd")
end

function Quest73186:OnSubStart7318615(arg1)
    print("OnSubStart7318615")
end

function Quest73186:OnSubFinish7318615(arg1)
    print("OnSubFinish7318615")
    this:ActorDestroy("Q7318631EnterTrigger")
    this:ClearNarratorTask()
end

function Quest73186:OnSubStart7318616(arg1)
    print("OnSubStart7318616")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7318616, function(arg1)
            actorUtils.FinishQuestID(false, 7318616)
        end, nil, nil, false)
    end)
end

function Quest73186:OnSubFinish7318616(arg1)
    print("OnSubFinish7318616")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73186:OnSubStart7318617(arg1)
    print("OnSubStart7318617")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc20846Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc20846Data.alias)
        end)
    end)
end

function Quest73186:OnSubFinish7318617(arg1)
    print("OnSubFinish7318617")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20846Data.alias)
end

function Quest73186:OnSubStart7318641(arg1)
    print("OnSubStart7318641")
    actorMgr:CreateActorWithPos("Q7318641EnterTrigger", "Actor/Gadget/Q7318641EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318641_guide").pos, sceneData:GetDummyPoint(3, "Q7318641_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7318618_Rmd", "Actor/Gadget/Q7318618_Rmd", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318618_RmdTrigger").pos, sceneData:GetDummyPoint(3, "Q7318618_RmdTrigger").rot, true, false, 3)
end

function Quest73186:OnSubFinish7318641(arg1)
    print("OnSubFinish7318641")
    this:ActorDestroy("Q7318618_Rmd")
end

function Quest73186:OnSubStart7318643(arg1)
    print("OnSubStart7318643")
end

function Quest73186:OnSubFinish7318643(arg1)
    print("OnSubFinish7318643")
end

function Quest73186:OnSubStart7318618(arg1)
    print("OnSubStart7318618")
    actorMgr:CreateActorWithPos("Q7318618EnterTrigger", "Actor/Gadget/Q7318618EnterTrigger", 70900002, 0, {x = -929.931, y = -159.949, z = 5006.392}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73186:OnSubFinish7318618(arg1)
    print("OnSubFinish7318618")
end

function Quest73186:OnSubStart7318619(arg1)
    print("OnSubStart7318619")
end

function Quest73186:OnSubFinish7318619(arg1)
    print("OnSubFinish7318619")
end

function Quest73186:OnSubStart7318620(arg1)
    print("OnSubStart7318620")
    this:PlayCutsceneIndex(7318620, function(arg1)
        actorUtils.FinishQuestID(false, 7318620)
    end, nil, nil, false)
end

function Quest73186:OnSubFinish7318620(arg1)
    print("OnSubFinish7318620")
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.Rmd_7318620)
    end)
end

function Quest73186:OnSubStart7318622(arg1)
    print("OnSubStart7318622")
    actorMgr:CreateActorWithPos("Q7318622EnterTrigger", "Actor/Gadget/Q7318622EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318622_guide").pos, sceneData:GetDummyPoint(3, "Q7318622_guide").rot, true, false, 3)
end

function Quest73186:OnSubFinish7318622(arg1)
    print("OnSubFinish7318622")
end

function Quest73186:OnSubStart7318623(arg1)
    print("OnSubStart7318623")
end

function Quest73186:OnSubFinish7318623(arg1)
    print("OnSubFinish7318623")
end

function Quest73186:OnSubStart7318624(arg1)
    print("OnSubStart7318624")
end

function Quest73186:OnSubFinish7318624(arg1)
    print("OnSubFinish7318624")
    this:ShowBlackScreen(0, 1.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest73186:OnSubStart7318625(arg1)
    print("OnSubStart7318625")
    this:PlayCutsceneIndex(7318625, function(arg1)
        this:NarratorOnlyTaskByData(datas.Rmd_7318625, function(arg1)
            actorUtils.FinishQuestID(false, 7318625)
        end)
    end, nil, nil, false)
end

function Quest73186:OnSubFinish7318625(arg1)
    print("OnSubFinish7318625")
end

function Quest73186:OnSubStart7318626(arg1)
    print("OnSubStart7318626")
    actorMgr:CreateActorWithPos("Q7318626EnterTrigger", "Actor/Gadget/Q7318626EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318626_guide").pos, sceneData:GetDummyPoint(3, "Q7318626_guide").rot, true, false, 3)
end

function Quest73186:OnSubFinish7318626(arg1)
    print("OnSubFinish7318626")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73186:OnSubStart7318627(arg1)
    print("OnSubStart7318627")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc4296Data.alias)
        end)
    end)
end

function Quest73186:OnSubFinish7318627(arg1)
    print("OnSubFinish7318627")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73186:OnSubStart7318628(arg1)
    print("OnSubStart7318628")
    actorMgr:CreateActorWithPos("Q7318628EnterTrigger", "Actor/Gadget/Q7318628EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318628_guide").pos, sceneData:GetDummyPoint(3, "Q7318628_guide").rot, true, false, 3)
    this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
end

function Quest73186:OnSubFinish7318628(arg1)
    print("OnSubFinish7318628")
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        globalActor:ChangeDay24Time(17, false)
    end, nil, nil, "", false, true)
end

function Quest73186:OnSubStart7318621(arg1)
    print("OnSubStart7318621")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
        this:NpcCreate(arg1, npcs.Npc20863Data.id, 2)
        this:NpcCreate(arg1, npcs.Npc20864Data.id, 3)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc20845Data.alias)
        end)
    end)
end

function Quest73186:OnSubFinish7318621(arg1)
    print("OnSubFinish7318621")
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        this:NpcDestroy(npcs.Npc20863Data.alias, 3)
        this:NpcDestroy(npcs.Npc20864Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest73186:OnSubStart7318637(arg1)
    print("OnSubStart7318637")
    this:NpcCreate(arg1, npcs.Npc4296Data.id, 2)
    this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
end

function Quest73186:OnSubFinish7318637(arg1)
    print("OnSubFinish7318637")
    this:CallDelay(0.5, function(arg1)
        globalActor:ChangeDay24Time(8, false)
    end)

    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73186:OnSubStart7318638(arg1)
    print("OnSubStart7318638")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 2)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc4296Data.alias)
        end)
    end)
end

function Quest73186:OnSubFinish7318638(arg1)
    print("OnSubFinish7318638")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20845Data.alias)
end

function Quest73186:OnSubStart7318636(arg1)
    print("OnSubStart7318636")
end

function Quest73186:OnSubFinish7318636(arg1)
    print("OnSubFinish7318636")
end

return Quest73186
